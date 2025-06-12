# Define variables
variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  default = "main-vpc"
}

# AWS provider block
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Owner       = "avinash"
      Environment = "dev"
    }
  }
}

# VPC resource block
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

