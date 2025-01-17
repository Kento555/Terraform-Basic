
resource "aws_instance" "instances" {
  ami           = "ami-0df8c184d5f6ae949"
  instance_type = "t2.micro"
  key_name      = "weishen-keypair" # change to your own keypair name
  subnet_id     = [subnet_id.id] # change to your own vpc subnet id
  associate_public_ip_address = true
#   vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  count         = 2

  tags = {
    Name = "ws-webserver-terraform-${count.index + 1}"
  }
}
# resource "aws_security_group" "allow_ssh" {
#   name        = "ws-terraform-security-group" #Security group name, e.g. jazeel-terraform-security-group
#   description = "Allow SSH inbound"
#   vpc_id      = [vpc_id]  #VPC ID (Same VPC as your EC2 subnet above), E.g. vpc-xxxxxxx
# }
# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#   security_group_id = aws_security_group.allow_ssh.id
#   cidr_ipv4         = "0.0.0.0/0"  
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }