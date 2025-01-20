# # Convert your static values such as EC2 instance type, key pair name, cidr range etc. to variables rather than hardcoded values.

# # Define the EC2 instance type
# variable "ec2_instance_type" {
#   description = "The type of EC2 instance"
#   type        = string
#   default     = "t2.micro" # You can set a default or leave it without a default
# }

# # Define the key pair name
# variable "key_pair_name" {
#   description = "The name of the key pair to use for EC2 instances"
#   type        = string
# }

# # Define the VPC CIDR block
# variable "vpc_cidr_block" {
#   description = "The CIDR block for the VPC"
#   type        = string
#   default     = "10.0.0.0/16"
# }

# # Define the subnet CIDR block
# variable "subnet_cidr_block" {
#   description = "The CIDR block for the subnet"
#   type        = string
#   default     = "10.0.1.0/24"
# }
