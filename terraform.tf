terraform {
  backend "s3" {
    bucket = "wa-terraform"
    key    = "gitlab/terraform.tfstate"
    region = "eu-central-1"
    profile = "default"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      
    }
  }
}