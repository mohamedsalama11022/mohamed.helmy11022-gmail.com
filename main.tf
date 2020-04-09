#ec2 -1
module "public_instance_1" {
  source = "./ec2Model"
  name = "nginx1"
  ami = "ami-0fc61db8544a617ed"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.subnet1.id}"
  associate_public_ip = true
  security_groups = ["${aws_security_group.allow_http.id}"]
}

#  ec2 -2
module "public_instance_2" {
  source = "./ec2Model"
  name = "nginx2"
  ami = "ami-0fc61db8544a617ed"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.subnet3.id}"
  associate_public_ip = true
  security_groups = ["${aws_security_group.allow_http.id}"]
}

#  ec2 -3
module "public_instance_3" {
  source = "./ec2Model"
  name = "pastion"
  ami = "ami-0fc61db8544a617ed"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.subnet3.id}"
  associate_public_ip = true
  security_groups = ["${aws_security_group.allow_ssh.id}"]
}

# pv-ec2 -1
module "nodejs-1" {
  source = "./ec2Model"
  name = "nodejs-1"
  ami = "ami-0fc61db8544a617ed"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.subnet2.id}"
  associate_public_ip = false
  
  
}

# pv-ec2 -2
module "nodejs-2" {
  source = "./ec2Model"
  name = "nodejs-2"
  ami = "ami-0fc61db8544a617ed"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.subnet4.id}"
  associate_public_ip = false
  
}

# pastion security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.first-vpc.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
# http security group
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.first-vpc.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}
