resource "aws_instance" "main" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip
  
  tags = {
    Name = var.instance_name
  }

  connection {
    type                = "ssh"
    user                = "ec2-user"
    private_key         = file(var.private_key_path)
    host                = var.bastion_host != null ? self.private_ip : self.public_ip
    bastion_host        = var.bastion_host
    bastion_user        = "ec2-user"
    bastion_private_key = file(var.private_key_path)
  }

  provisioner "file" {
    source      = var.source_file
    destination = var.destination_file
    on_failure  = continue
  }

  provisioner "remote-exec" {
    inline = [
      var.provisioner_script
    ]
  }
}
