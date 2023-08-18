data "archive_file" "lambda" {
  type        = "zip"
  source_dir  = "../../../lambda"
  output_path = "lambda.zip"
}