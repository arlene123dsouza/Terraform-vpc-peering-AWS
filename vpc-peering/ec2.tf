# Instance of Mumbai server
resource "aws_instance" "mum_server" {
  ami           = var.ami_mum
  instance_type = var.instance_type
#  tenancy_type = "default"
  provider = aws.mumbai
  subnet_id     = aws_subnet.mum_subnet.id
  vpc_security_group_ids = [aws_security_group.mum_sg.id]
  associate_public_ip_address = true

  root_block_device {
    volume_size = 8                       # Size of the root volume in GB
    volume_type = "gp3"                   # General Purpose SSD (GP2)
  }

  tags = {
    Name = "Mumbai Server"
  }
}


# Instance of Singapore server
resource "aws_instance" "sing_server" {
  ami           = var.ami_sing
  instance_type = var.instance_type
#  tenancy_type = "default"
  provider = aws.singapore
  subnet_id     = aws_subnet.sing_subnet.id
  vpc_security_group_ids = [aws_security_group.sing_sg.id]
  associate_public_ip_address = true

  root_block_device {
    volume_size = 8                       # Size of the root volume in GB
    volume_type = "gp3"                   # General Purpose SSD (GP2)
  }

  tags = {
    Name = "Singapore Server"
  }
}

