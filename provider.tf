terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }

  }
}
provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "khomp-test"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}