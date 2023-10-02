resource "aws_instance" "bastianEc2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.tf-key-pair.id
  associate_public_ip_address = true
  subnet_id                   = module.network.public_subnets[0].id
  security_groups             = [aws_security_group.BastianSG.id]
  tags = {
    Name = "bastianEc2"
  }

  user_data = <<-E0F
              #!/bin/bash
               echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/private_key.pem
               chmod 400 private_key.pem
              E0F

  provisioner "local-exec" {
    command = "echo The Bastian IP address is ${self.public_ip} > Bastian-pub-ip"
  }
}