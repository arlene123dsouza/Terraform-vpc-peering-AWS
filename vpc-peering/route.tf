# Route for Mumbai Region

resource "aws_route_table" "mum_route" {
  vpc_id = aws_vpc.mum_vpc.id
  provider = aws.mumbai

  route {
    cidr_block = var.ig_route
    gateway_id = aws_internet_gateway.mum_igw.id
  }

  route {
    cidr_block = var.cidr_block_sing
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc1_to_vpc2.id
  }

  tags = {
    Name = "Mumbai Route"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.mum_subnet.id
  route_table_id = aws_route_table.mum_route.id
  provider = aws.mumbai
}


# Route for Singapore Region

resource "aws_route_table" "sing_route" {
  vpc_id = aws_vpc.sing_vpc.id
  provider = aws.singapore

  route {
    cidr_block = var.ig_route
    gateway_id = aws_internet_gateway.sing_igw.id
  }

 route {
    cidr_block = var.cidr_block_mum
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc1_to_vpc2.id
  }

  tags = {
    Name = "Singapore Route"
  }
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.sing_subnet.id
  route_table_id = aws_route_table.sing_route.id
  provider = aws.singapore
}

