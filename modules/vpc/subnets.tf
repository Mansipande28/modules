resource "aws_subnet" "subnet1" {
  cidr_block              = var.subnet1_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  #availability_zone       = data.aws_availability_zones.available.names[0]
  tags= {
    Name="subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  cidr_block              = var.subnet2_cidr
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  #availability_zone       = data.aws_availability_zones.available.names[1]
  tags= {
    Name="subnet2"
  }
}