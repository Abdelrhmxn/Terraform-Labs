output "public_subnets" {
  value = aws_subnet.pub_subnets
}

output "private_subnets" {
  value = aws_subnet.priv_subnets
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}   

output "cidr_block" {
  value = aws_vpc.myvpc.cidr_block
}