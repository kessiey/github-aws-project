# Define VPC
resource "aws_vpc" "project_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "project_vpc"
  }
}

# Define Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.project_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "Public Subnet"
  }
}

# Define Internet gateway for the VPC
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = "Internet_Gateway"
  }
}

# Associate the public subnet with the Internet Gateway
resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_vpc.project_vpc.main_route_table_id
}

# Create a separate route table for the private subnet
resource "aws_route_table" "private_subnet_rt" {
  vpc_id = aws_vpc.project_vpc.id
}

# Add a Route to the Private Subnet's Route Table
resource "aws_route" "private_subnet_route" {
  route_table_id         = aws_route_table.private_subnet_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}

# Create the Elastic IP
resource "aws_eip" "nat_eip" {
  instance = null
}

# Define the NAT Gateway
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id
}
