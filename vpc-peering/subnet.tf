#  Public Subnet in Mumbai Region
resource "aws_subnet" "mum_subnet" {
  vpc_id     = aws_vpc.mum_vpc.id
  cidr_block = var.cidr_block_mum_subnet
  provider = aws.mumbai
  availability_zone = var.availability_zone_mum

  tags = {
    Name = "Mumbai Subnet Public"
  }
}

#  Public Subnet in Singapore Region
resource "aws_subnet" "sing_subnet" {
  vpc_id     = aws_vpc.sing_vpc.id
  cidr_block = var.cidr_block_sing_subnet
  provider = aws.singapore
  availability_zone = var.availability_zone_sing

  tags = {
    Name = "Singapore Subnet Public"
  }
}

