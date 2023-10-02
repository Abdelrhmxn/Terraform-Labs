output "bastian_publicIP" {
    value = aws_instance.bastianEc2-1.public_ip
}

output "privEc2_privateIP" {
  value = aws_instance.private-Ec2-1.private_ip
}