variable "instance_type" {
 type        = string
 default     = "t2.micro"
}

variable "region" {
type = string
default = "us-central"
}

variable "key_name" {
  type = string
  default = "ec2InstanceKey"
}

