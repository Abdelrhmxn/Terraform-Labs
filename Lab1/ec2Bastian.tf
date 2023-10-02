resource "aws_instance" "bastianEc2-1" {
  ami                         = "ami-0703b5d7f7da98d1e"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.tf-key-pair.id
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public-subnet-1a.id
  security_groups             = [aws_security_group.BastianSG.id]
  tags = {
    Name = "bastianEc2"
  }

  user_data = <<-E0F
              #!/bin/bash
               echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/private_key.pem
               chmod 400 private_key.pem
              E0F
}
