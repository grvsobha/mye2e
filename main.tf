terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}

provider "aws" {
  access_key = "AKIAZFPGUKCAWVZFKNFO"
  secret_key = "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"
  region = "us-east-1"

}
# aws ec2 instnace
resource "aws_instance" "ec2test"{
  ami = "ami-0bef6cc322bfff646"
  instance_type = "t2.micro"
  tags = {
    Name = "ec2test"
  }
}
