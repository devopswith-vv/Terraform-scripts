terraform {
  backend "s3" {
    bucket         = "my-terraform-backend"
    key            = "state/${var.environment}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}