# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~>4.0"
#     }
#   }
# }

provider "aws" {
  region     = "us-west-2"
  access_key = "test_access_key"
  secret_key = "test_secret_key"
}

## resource definition for an ec2 instance
## the property "ami" is Amazon Machine Image (AMI) provides the software required to boot the instance. This varies with region. The one used here is an AMI from Ubuntu AMI Locator page
## the property "instance_type" The EC2 instance type determines the amount of CPU, memory, disk space, and networking capacity available
resource "aws_instance" "staging_env" {
  ami           = "ami-08305dd8ab642ad8c"
  instance_type = "${var.instance_type}"
}