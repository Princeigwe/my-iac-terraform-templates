provider "aws" {
  region     = "us-west-2"
  access_key = "test_access_key"
  secret_key = "test_secret_key"
}


resource "aws_instance" "staging_env" {
  ami           = "ami-08305dd8ab642ad8c"
  instance_type = var.instance_type
}