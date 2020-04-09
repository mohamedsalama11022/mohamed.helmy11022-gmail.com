resource "aws_instance" "app" {
  ami           = "${var.ami}"
  key_name = "${var.key}"
  associate_public_ip_address = "${var.associate_public_ip}"
  subnet_id = "${var.subnet}"
  instance_type = "t2.micro"
  vpc_security_group_ids  = "${var.security_groups}"

  tags = {
    Name = "${var.name}"
  }
}