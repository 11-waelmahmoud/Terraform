provider "aws" {
    region = var.region  
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block

  tags = {
    "Name" = "vpc_01"
    "environment" = "dev"
  }
}


resource "aws_subnet" "pri_sub" {
  count = length(var.private_subnet_cidrs)
  vpc_id = aws_vpc.myvpc.id
  cidr_block = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  
  tags = {
    Name= "Private Subnet ${count.index +1}"
  }
}