# # Create AWS S3
# provider "aws" {
#   alias  = "us"
#   region = "us-east-1"
# }
# resource "aws_s3_bucket" "ws_bucket" {
#   bucket = "my-tf-test-bucket" # Change to a globally unique name

#   tags = {
#     Name        = "WS Bucket"
#     Environment = "Dev"
#   }
# }

