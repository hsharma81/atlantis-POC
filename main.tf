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
      version = "~> 5.3.0"
    }
  }
}


resource "aws_s3_bucket" "bucket" {
	bucket = "atlantis-resource-bucket"
	}
resource "null_resource" "cluster" {
}
