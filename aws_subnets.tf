# Dynamically Retrieve a List of Subnets

data "aws_subnets" "all_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.ws_vpc.id] # Dynamically retrieved VPC ID
  }
}

# data.aws_subnets.all_subnets.ids

# Explanation:
# You can now use data.aws_subnets.all_subnets.ids to work with the list of subnet IDs dynamically.
# data.aws_subnets.all_subnets.ids: A list of subnet IDs (e.g., ["subnet-1", "subnet-2", "subnet-3"]).

