resource "aws_subnet" "first_public_subnet" {
    vpc_id = "aws_vpc.my_vpc.id"
    cidr_block = "10.0.0.0/24"

    tags = {
        Name = "first_public_subnet"
    }
}

resource "aws_subnet" "second_public_subnet" {
    vpc_id = "aws_vpc.my_vpc.id"
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "second_public_subnet"
    }
}

resource "aws_subnet" "first_private_subnet" {
    vpc_id = "aws_vpc.my_vpc.id"
    cidr_block = "10.0.16.0/20"

    tags = {
        Name = "first_private_subnet"
    }
}


resource "aws_subnet" "second_private_subnet" {
    vpc_id = "aws_vpc.my_vpc.id"
    cidr_block = "10.0.32.0/20"

    tags = {
        Name = "second_private_subnet"
    }
}