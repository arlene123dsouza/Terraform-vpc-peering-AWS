#VPC in Mumbai Region
resource "aws_vpc" "mum_vpc" {
  cidr_block       = var.cidr_block_mum
  instance_tenancy = "default"
  provider = aws.mumbai

  tags = {
    Name = "Mumbai VPC"
  }
}


#VPC in Singapore Region
resource "aws_vpc" "sing_vpc" {
  cidr_block       = var.cidr_block_sing
  instance_tenancy = "default"
  provider = aws.singapore

  tags = {
    Name = "Singapore VPC"
  }
}

