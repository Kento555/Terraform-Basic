# # Create Security Group
# resource "aws_security_group" "allow_ssh" {
#   name        = "ws-terraform-security-group"                   
#   description = "Allow SSH inbound"
#   vpc_id      = data.aws_vpc.ws_vpc.id                         
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#   security_group_id = aws_security_group.allow_ssh.id
#   cidr_ipv4         = "0.0.0.0/0"  
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }