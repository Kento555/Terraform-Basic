
resource "aws_instance" "instances" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  key_name      = "weishen-keypair" # change to your own keypair name
  subnet_id     = "subnet-012deeadf67a152b8" # change to your own vpc subnet id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  count         = 2

  tags = {
    Name = "ws-webserver-terraform-${count.index + 1}"
  }
}
