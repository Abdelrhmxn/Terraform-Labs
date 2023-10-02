resource "aws_subnet" "priv_subnets" {
  count             = 2
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_priv_CIDR_list[count.index]
  availability_zone = var.azs[count.index]
  tags = {
    Name = "private-subnet"
  }
}
