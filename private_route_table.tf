resource "aws_route_table" "private_route_table" {
  vpc_id = "aws_vpc.my_vpc.id"
}
 
  resource "aws_route_table_association" "first_private_subnet" {
  subnet_id      = aws_subnet.first_private_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}

  resource "aws_route_table_association" "second_private_subnet" {
  subnet_id      = aws_subnet.second_private_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}