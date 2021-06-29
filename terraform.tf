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
  region  = "eu-west-1"
}

resource "aws_instance" "mini_project" {
  count                  = var.instance_count
  ami                    = element(var.ami, count.index)
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = element(var.subnet_ids, count.index)
  vpc_security_group_ids = [aws_security_group.tool_server_1.id, aws_security_group.tool_server_2.id, aws_security_group.build_server.id]

  tags = {
    Name        = "Tool-Server0${count.index + 1}"
    environment = "${var.environment}"
    role        = "${var.role}"
  }

}



resource "aws_vpc" "My_VPC" {
  cidr_block           = var.vpcCIDRblock
  instance_tenancy     = var.instanceTenancy
  enable_dns_support   = var.dnsSupport
  enable_dns_hostnames = var.dnsHostNames
  tags = {
    Name = "VPC TOOLSERVER"
  }
}



output "instance-public-ip" {
  value = aws_instance.mini_project.*.public_ip
}

output "tool_server_1" {
  value = aws_security_group.tool_server_1.id
}
output "tool_server_2" {
  value = aws_security_group.tool_server_2.id
}
output "build_server" {
  value = aws_security_group.build_server.id
}

