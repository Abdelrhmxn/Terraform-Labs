resource "aws_subnet" "pub_subnets" {
  count             = 2
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_pub_CIDR_list[count.index]
  availability_zone = var.azs[count.index]
  tags = {
    Name = "public-subnet"
  }
}
