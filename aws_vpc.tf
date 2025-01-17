#To retrieve VPC ID of the default or custom VPC
variable "vpc_id" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
  filter {
    name   = "WS-2025-vpc"
    values = ["true"] # Retrieves the default VPC
  }
}

resource "aws_subnet" "example" {
  vpc_id            = data.aws_vpc.selected.id
  availability_zone = "us-east-1"
  cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
}