resource "aws_subnet" "aws_publicsubnets" {
  count = 3
  vpc_id     = "${aws_vpc.myvpc.id}"
   availability_zone = "${element(var.public_subnets, count.index)}"
   cidr_block = "${element(var.public_cidr, count.index)}"

  tags = {
    Name = "public-subnet-${count.index+1}"
  }
}

resource "aws_subnet" "aws_privatesubnets" {
  count = 3
  vpc_id     = "${aws_vpc.myvpc.id}"
   availability_zone = "${element(var.private_subnets, count.index)}"
   cidr_block = "${element(var.private_cidr, count.index)}"

  tags = {
    Name = "private-subnet-${count.index+1}"
  }
}
