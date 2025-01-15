resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "ws-s3-bucket-150125"
  force_destroy = true
}


