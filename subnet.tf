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
