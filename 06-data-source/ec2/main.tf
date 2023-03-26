terraform {
  required_version = "1.4.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-148198459315"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "learn-terraform"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
