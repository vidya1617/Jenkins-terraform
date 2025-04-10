provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_s3_bucket" "task3_bucket" {
    bucket = "task3-terraform-vc"
}
resource "aws_s3_bucket_notification" "s3_notify_lambda" {
  bucket = aws_s3_bucket.csv_bucket.id

  lambda_function {
    lambda_function_arn = aws_lambda_function.read_csv_lambda.arn
    events              = ["s3:ObjectCreated:*"]
  }

  depends_on = [aws_lambda_permission.allow_s3_invoke]
}