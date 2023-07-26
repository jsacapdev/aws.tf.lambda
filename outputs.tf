output "rg_arn" {
  description = "ARN of the resource group"
  value       = module.resource_group.arn
}

output "s3_arn" {
  description = "ARN of the resource group"
  value       = module.s3_bucket.arn
}