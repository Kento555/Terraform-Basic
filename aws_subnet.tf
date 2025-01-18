# variable "subnet_id" {}

# data "aws_subnet" "selected" {
#   id = var.subnet_id
  
# }

# resource "aws_security_group" "subnet_security_group" {
#   vpc_id = data.aws_subnet.selected.vpc_id

#   ingress {
#     cidr_blocks = [data.aws_subnet.selected.cidr_block]
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#   }
# }