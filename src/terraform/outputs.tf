output "rg_arn" {
  description = "ARN of the resource group"
  value       = module.resource_group.arn
}

output "s3_arn" {
  description = "ARN of the resource group"
  value       = module.s3_bucket.arn
}

output "lambda_arn" {
  description = "ARN of the lambda"
  value       = module.lambda.arn
}

output "vpc_arn" {
  description = "ARN of the vpc"
  value       = module.network.arn
}