output "public_alb_dns" {
  description = "The public Application Load Balancer DNS name."
  value       = module.public_alb.lb_dns_name
}

output "proxy_public_ips" {
  description = "Public IPs of the Nginx proxy instances."
  value       = module.proxy_ec2.*.public_ip
}