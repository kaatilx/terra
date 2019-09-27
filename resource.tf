resource "aws_vpc" "terra-ex-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "terra"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block = "${cidrsubnet(aws_vpc.terra-ex-vpc.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.terra-ex-vpc.id}"
  availability_zone = "ap-south-1a"
}

resource "aws_subnet" "subnet2" {
  cidr_block = "${cidrsubnet(aws_vpc.terra-ex-vpc.cidr_block, 2, 2)}"
  vpc_id = "${aws_vpc.terra-ex-vpc.id}"
  availability_zone = "ap-south-1b"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = "${aws_vpc.terra-ex-vpc.id}"
  ingress {
    cidr_blocks = ["${aws_vpc.terra-ex-vpc.cidr_block}"]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
  tags = {
    Name = "terra-sec-grp"
  }
}

