data "archive_file" "lambda" {
  type        = "zip"
  source_dir  = "../lambda"
  output_path = "lambda.zip"
}

data "aws_iam_policy_document" "AWSLambdaTrustPolicy" {
  version = "2012-10-17"
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "iam_role" {
  assume_role_policy = data.aws_iam_policy_document.AWSLambdaTrustPolicy.json
  name               = var.lambda_aws_iam_role_name
}

resource "aws_iam_role_policy_attachment" "iam_role_policy_attachment_lambda_basic_execution" {
  role       = aws_iam_role.iam_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "lambda_function" {
  tags = {
    Name = var.lambda_function_name
  }
  code_signing_config_arn = ""
  description             = ""
  filename                = data.archive_file.lambda.output_path
  function_name           = var.lambda_function_name
  role                    = aws_iam_role.iam_role.arn
  handler                 = "index.handler"
  runtime                 = "nodejs14.x"
  source_code_hash        = filebase64sha256(data.archive_file.lambda.output_path)
}
