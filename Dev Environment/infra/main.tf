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
  region = var.aws_region
}

resource "aws_instance" "Genesis-" {
  count = 1
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Name = "Genesis-${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.all_SSH.id}"]
}

resource "aws_key_pair" "tf_ssh_keys" {
  key_name = var.key_name
  public_key = file("${var.key_name}.pub")
}