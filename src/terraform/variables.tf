variable "aws_region" {
  description = "AWS region for all resources."
  type        = string
}

variable "lamdba_resource_group_name" {
  type = string
}

variable "lambda_s3_bucket_name" {
  type = string
}

variable "lambda_aws_iam_role_name" {
  type = string
}

variable "lambda_function_name" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "public_subnet_name" {
  type = string
}

variable "public_subnet_cidr_block" {
  type = string
}

variable "vpc_internet_gateway_name" {
  type = string
}

variable "vpc_internet_gateway_public_route_table_name" {
  type = string
}

variable "default_tags" {
  description = "Tags to apply"
  type        = map(string)
}
