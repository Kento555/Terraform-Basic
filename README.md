# aws-networking-and-compute-tf

# This is some of the key notes.

# Dynamic Retreive
# VPC:
data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"      # Look for VPCs with a "Name" tag
    values = ["WS-2025-vpc"] # Retrieves from my VPC Name tag value
  }
} 
# *** Now, replace hardcoded VPC references with data.aws_vpc.selected.id

# Specific Subnet:
data "aws_subnets" "all_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id] # Dynamically retrieved VPC ID
  }
}
# You can now use data.aws_subnets.all_subnets.ids to work with the list of subnet IDs dynamically.

data.aws_subnets.all_subnets.ids[count.index % length(data.aws_subnets.all_subnets.ids)]