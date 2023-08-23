provider "aws" {
  region = var.aws_region

  default_tags {
    tags = var.default_tags
  }
}

provider "archive" {}

module "resource_group" {
  source = "./modules/resource_group"

  resource_group_name = var.lamdba_resource_group_name
}

module "s3_bucket" {
  source = "./modules/s3_bucket"

  s3_bucket_name = var.lambda_s3_bucket_name
}

module "lambda" {
  source = "./modules/lambda"

  lambda_aws_iam_role_name = var.lambda_aws_iam_role_name
  lambda_function_name     = var.lambda_function_name
}

module "network" {
  source = "./modules/network"

  vpc_name                 = var.vpc_name
  vpc_cidr_block           = var.vpc_cidr_block
  public_subnet_name       = var.public_subnet_name
  public_subnet_cidr_block = var.public_subnet_cidr_block
}
