resource "aws_route_table" "mypublic_route" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myGW.id
  }
  tags = {
    Name = "mypublic_route"
  }
}

resource "aws_route_table_association" "RT-IG-Association1" {
  subnet_id = aws_subnet.public-subnet-1a.id
  route_table_id = aws_route_table.mypublic_route.id
}

resource "aws_route_table_association" "RT-IG-Association2" {
  subnet_id = aws_subnet.public-subnet-1b.id
  route_table_id = aws_route_table.mypublic_route.id
}
#---------------------------------------------------------------------------------
resource "aws_route_table" "NAT-Gateway-RT" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.myNatGW.id
  }
  tags = {
    Name = "RT-NATGateway"
  }
}

resource "aws_route_table_association" "Nat-Gateway-RT-Association1" {
  subnet_id      = aws_subnet.private-subnet-1a.id
  route_table_id = aws_route_table.NAT-Gateway-RT.id
}
resource "aws_route_table_association" "Nat-Gateway-RT-Association2" {
  depends_on = [
    aws_route_table.NAT-Gateway-RT
  ]
  subnet_id      = aws_subnet.private-subnet-1b.id
  route_table_id = aws_route_table.NAT-Gateway-RT.id
}