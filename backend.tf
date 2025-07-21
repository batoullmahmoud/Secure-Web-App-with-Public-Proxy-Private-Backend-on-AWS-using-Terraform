terraform {
  backend "s3" {
    bucket         = "batoul-s3"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state"
    encrypt        = true
  }
}