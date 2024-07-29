resource "aws_vpc_peering_connection" "vpc1_to_vpc2" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = aws_vpc.sing_vpc.id
  vpc_id        = aws_vpc.mum_vpc.id
  peer_region = "ap-southeast-1"
  provider = aws.mumbai
  auto_accept   = false

  tags = {
    Side = "Requester"
  }
}


resource "aws_vpc_peering_connection_accepter" "peer_accept" {
  provider                  = aws.singapore
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc1_to_vpc2.id
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}

