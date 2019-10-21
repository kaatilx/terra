resource "aws_instance" "secondserver" {
  ami = "ami-04242e05c1ebface0"
  instance_type = "t2.micro"
  tags = {
    Name = "terra-instance"
  }
}