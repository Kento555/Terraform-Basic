# Dynamically Retrieve VPC ID

data "aws_vpc" "ws_vpc" {
  filter {
    name   = "tag:Name"      # Look for VPCs with a "Name" tag
    values = ["WS-2025-vpc"] # Retrieves from my VPC Name tag value
  }
} 

# data.aws_vpc.ws_vpc.id
# Now, replace hardcoded VPC references with data.aws_vpc.ws_vpc.id

# option: Fetch default VPC:

# data "aws_vpc" "selected" {
#   default = true # Set to true to retrieve the default VPC
# }

