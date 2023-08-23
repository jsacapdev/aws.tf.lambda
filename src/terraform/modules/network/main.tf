resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet_public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.vpc_internet_gateway_name
  }
}


