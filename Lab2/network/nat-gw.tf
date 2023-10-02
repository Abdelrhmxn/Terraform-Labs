resource "aws_nat_gateway" "myNatGW" {
  subnet_id     = aws_subnet.pub_subnets[0].id
  allocation_id = aws_eip.Nat-Gateway-EIP.id

  tags = {
    Name = "myNatGW"
  }
}


resource "aws_eip" "Nat-Gateway-EIP" {
  domain = "vpc"
}


