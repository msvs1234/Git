resource "aws_vpc" "myvpc" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = "true"
  tags = {
    Name = "${var.vpc_name}"
  }
}
resource "aws_internet_gateway" "aws_igw" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
    Name = "${var.vpc_igw}"
  }
}