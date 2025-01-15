variable "region" {
  type = string
  default = "us-central"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.1/16"
}

variable "azs" {
  type = list(string)
  description = "Availability Zones"
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.3.0/24", "10.0.4.0/24"]
}