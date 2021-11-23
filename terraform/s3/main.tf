terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-2"
}

resource "aws_s3_bucket" "stephen_bucket" {
  bucket = "stephen-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "Stephen bucket"
    Environment = "Dev"
  }
}
