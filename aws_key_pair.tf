# This data source to get information about a specific EC2 Key Pair.

data "aws_key_pair" "ws_keypair" {
  key_name           = "weishen-keypair" # Ensure this matches the key pair in your AWS account
  include_public_key = true

  # filter {
  #   name   = "tag:Component"
  #   values = ["weishen-keypair"]       # I don't have tag for this keypair , thus exclude this filter
  # }
}

output "fingerprint" {
  value = data.aws_key_pair.ws_keypair.fingerprint
}

output "name" {
  value = data.aws_key_pair.ws_keypair.key_name
}

output "id" {
  value = data.aws_key_pair.ws_keypair.id
}