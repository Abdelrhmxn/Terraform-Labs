resource "aws_instance" "privateEc2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.tf-key-pair.id
  associate_public_ip_address = false
  security_groups             = [aws_security_group.privateSG.id]
  subnet_id                   = module.network.private_subnets[0].id
  tags = {
    Name = "private-Ec2"
  }
}
