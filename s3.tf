terraform {
  required_version = "~> 1.5"

  backend "s3" {
    region = "eu-west-1"
    bucket = "terraform-examples"
    key    = "terraform/atlantis/poc.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.30"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
