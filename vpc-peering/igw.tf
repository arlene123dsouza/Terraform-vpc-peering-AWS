# IGW for Mumbai Region
resource "aws_internet_gateway" "mum_igw" {
  vpc_id = aws_vpc.mum_vpc.id
  provider = aws.mumbai

  tags = {
    Name = "Mumbai IGW"
  }
}


# IGW for Singapoe Region
resource "aws_internet_gateway" "sing_igw" {
  vpc_id = aws_vpc.sing_vpc.id
  provider = aws.singapore

  tags = {
    Name = "Singapore IGW"
  }
}

