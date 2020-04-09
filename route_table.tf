resource "aws_route_table" "my_public_route_table" {
  vpc_id = "aws_vpc.my_vpc.id"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "aws_internet_gateway.for_the_whole_vpc.id"
  }
}
  resource "aws_route_table_association" "first_public_subnet" {
  subnet_id      = aws_subnet.first_public_subnet.id
  route_table_id = aws_route_table.my_public_route_table.id
}

  resource "aws_route_table_association" "second_public_subnet" {
  subnet_id      = aws_subnet.first_public_subnet.id
  route_table_id = aws_route_table.my_public_route_table.id
}