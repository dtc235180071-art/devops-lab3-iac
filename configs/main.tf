terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "lab3_bucket" {
  bucket_prefix = "devops-lab3-bucket-"
  force_destroy = true
}

resource "aws_instance" "lab3_ec2" {
  ami           = "ami-0c7217cdde317cfec" # Amazon Linux 2023 AMI (us-east-1)
  instance_type = var.instance_type

  tags = {
    Name = "DevOps-Lab3-EC2"
  }
}
