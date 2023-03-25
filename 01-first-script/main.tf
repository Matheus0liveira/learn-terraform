terraform {
  required_version = "1.4.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  profile = "learn-terraform"
}

resource "aws_s3_bucket" "my-terraform-bucket" {
  bucket = "my-terraform-bucket-12o192u192219281192"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManageByDb  = "Tag Description Altered"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.my-terraform-bucket.id
  acl    = "private"
}