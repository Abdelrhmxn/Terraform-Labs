resource "aws_internet_gateway" "myGW" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "myGW"
  }
}





