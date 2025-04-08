terraform {
  required_version = ">= 1.3"

  backend "s3" {
    bucket         = "ecs-terraform-backend-ak"
    key            = "ecs-deployment/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
