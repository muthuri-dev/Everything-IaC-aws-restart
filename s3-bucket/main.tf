terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-s3-bucket-unique-1"

  tags = {
    Name = "S3 Bucket"
    Environment = "Dev"
  }
}