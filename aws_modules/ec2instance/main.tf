provider "aws" {
   region = var.region
}

data "aws_ami" "ubuntu" {

    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}


resource "aws_instance" "ec2_instance" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    key_name = var.key_name


    tags ={
        "name" = "myvm"
        "environment" = "dev"
    }

}