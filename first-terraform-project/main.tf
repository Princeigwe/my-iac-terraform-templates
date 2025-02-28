# defining the provider plugin to use
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

# configuring the aws provider
provider "aws" {
  region     = "us-west-2"
  access_key = "test_access_key"
  secret_key = "test_secret_key"
}

# spin up a virtual private cloud instance
resource "aws_vpc" "example_private_cloud" {
  cidr_block = "0.0.0.0/16" # IP address information of the VPC
}

