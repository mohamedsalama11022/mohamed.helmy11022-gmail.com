resource "aws_internet_gateway" "for_the_whole_vpc" {
  vpc_id = "aws_vpc.my_vpc.id"

  tags = {
    Name = "for_the_whole_vpc"
  }
}