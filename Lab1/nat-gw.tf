resource "aws_nat_gateway" "myNatGW" {
  subnet_id     = aws_subnet.public-subnet-1a.id
  allocation_id = aws_eip.Nat-Gateway-EIP.id

  tags = {
    Name = "myNatGW"
  }
}


resource "aws_eip" "Nat-Gateway-EIP" {
  domain = "vpc"
}


