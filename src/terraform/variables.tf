variable "aws_region" {
  description = "AWS region for all resources."

  type    = string
  default = "us-east-1"
}

variable "lamdba_resource_group_name" {

  type    = string
  default = "rg-gp-dev"
}

variable "lambda_s3_bucket_name" {

  type    = string
  default = "s3-gp-dev"
}



variable "default_tags" {
  description = "Tags to apply"
  type        = map(string)
  default = {
    env     = "dev"
    product = "lambda"
  }
}
