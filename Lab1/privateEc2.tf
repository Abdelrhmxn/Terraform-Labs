resource "aws_instance" "private-Ec2-1" {
  ami                         = "ami-0703b5d7f7da98d1e"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.tf-key-pair.id
  associate_public_ip_address = false
  security_groups             = [aws_security_group.privateSG.id]
  subnet_id = aws_subnet.private-subnet-1a.id
  
  tags = {
    Name = "private-Ec2"
  }
}

