aws_region                                   = "us-east-1"
lamdba_resource_group_name                   = "rg-gp-dev"
lambda_s3_bucket_name                        = "s3-gp-dev"
lambda_aws_iam_role_name                     = "iam-role-lambda-trigger-gp-dev"
lambda_function_name                         = "lambda-gp-dev"
vpc_name                                     = "vpc-gp-dev"
vpc_cidr_block                               = "10.0.0.0/16"
public_subnet_name                           = "public_snet-gp-dev"
public_subnet_cidr_block                     = "10.0.0.0/21"
vpc_internet_gateway_name                    = "vpc-ig-gp-dev"
vpc_internet_gateway_public_route_table_name = "vpc-ig-rt-gp-dev"

default_tags = {
  env     = "dev"
  product = "lambda"
}
