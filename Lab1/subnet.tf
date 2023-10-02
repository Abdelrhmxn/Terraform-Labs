resource "aws_subnet" "private-subnet-1a" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-north-1a"
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-1b" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-north-1b"
  tags = {
    Name = "private-subnet-2"
  }
}



resource "aws_subnet" "public-subnet-1a" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-north-1a"
  tags = {
    Name = "public-subnet-1"
  }
}


resource "aws_subnet" "public-subnet-1b" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "eu-north-1b"
  tags = {
    Name = "public-subnet-2"
  }
}