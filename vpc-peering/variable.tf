variable "cidr_block_mum"{
  description = "CIDR for Mumbai Region"
}

variable "cidr_block_sing" {
  description = "CIDR for Singapore Region"
}

variable "cidr_block_mum_subnet" {
  description = "CIDR Subnet for Mumbai Region"
}

variable "cidr_block_sing_subnet" {
  description = "CIDR Subnet for Singapore Region"
}

variable "availability_zone_mum" {
  description = "Availability zone for Mumbai Region"
}

variable "availability_zone_sing" {
  description = "Availability zone for Singapore Region"
}

variable "ig_route" {
  description = "Route of public subnet to internet"
}

variable "ami_mum" {
  description = "AMI Ubuntu"
}

variable "ami_sing" {
  description = "AMI Ubuntu"
}

variable "instance_type" {
  description = "Type of Instance"
}

variable "peer_owner_id" {
  description = "Peer Owner id"
}

