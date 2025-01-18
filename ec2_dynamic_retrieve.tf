# Create EC2 by retrieve dynamic VPC and subnets
resource "aws_instance" "instances" {
  ami                         = "ami-0df8c184d5f6ae949"
  instance_type               = "t2.micro"
  subnet_id                   = data.aws_subnets.all_subnets.ids[count.index % length(data.aws_subnets.all_subnets.ids)] # Dynamically Retrieve a Specific Subnet
  associate_public_ip_address = true
  key_name                    = data.aws_key_pair.ws_keypair.key_name 
  
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  count                       = 3

  tags = {
    Name = "ws-terraform-dynamic-${count.index + 1}"
  }
}
# resource "aws_security_group" "allow_ssh" {                         # I don't need this resource because my using existing security group from aws_security_group.tf
#   name        = "ws-terraform-security-group" 
#   description = "Allow SSH inbound"
#   vpc_id      = data.aws_vpc.ws_vpc.id  
# }
# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {   # I don't need this resource because my using existing security group from aws_security_group.tf
#   name        = "ws-terraform-security-group" 
#   security_group_id = aws_security_group.allow_ssh.id
#   cidr_ipv4         = "0.0.0.0/0"  
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }

# Explanation:
# subnet_id:
# data.aws_subnets.example.ids: A list of subnet IDs (e.g., ["subnet-1", "subnet-2", "subnet-3"]).
# count.index: The index of the current instance in the loop.
# % length(data.aws_subnets.example.ids): Ensures the index wraps around if there are more instances than subnets.