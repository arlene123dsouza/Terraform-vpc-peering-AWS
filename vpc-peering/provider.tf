terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider for Mumbai Region
provider "aws" {
  region = "ap-south-1"
  alias = "mumbai"
}

# Configure the AWS Provider for Singapore Region
provider "aws" {
  region = "ap-southeast-1"
  alias = "singapore"
}

