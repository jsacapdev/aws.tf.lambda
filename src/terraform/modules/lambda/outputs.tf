output "arn" {
  description = "ARN of the lambda"
  value       = aws_lambda_function.lambda_function.arn
}