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
