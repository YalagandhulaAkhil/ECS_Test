terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "ec2-project/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true  # replaces deprecated dynamodb_table
  }
}
