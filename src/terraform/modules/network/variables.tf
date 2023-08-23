variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnet_name" {
  type        = string
  description = "Public subnet Name"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "Public subnet CIDR"
}

