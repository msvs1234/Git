resource "aws_route_table" "Public_route" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.aws_igw.id}"
  }
  tags = {
    name = "${var.vpc_purt}"
  }
}

  resource "aws_route_table" "Private_route" {
  vpc_id = "${aws_vpc.myvpc.id}"

  tags = {
    name = "${var.vpc_pvrt}"
  }
  }
  
  resource "aws_route_table_association" "public_sub_assoc" {
    count = 3
  subnet_id      = "${element(aws_subnet.aws_publicsubnets.*.id, count.index)}"
  route_table_id = "${aws_route_table.Public_route.id}"
}

resource "aws_route_table_association" "private_sub_assoc" {
    count = 3
  subnet_id      = "${element(aws_subnet.aws_privatesubnets.*.id, count.index)}"
  route_table_id = "${aws_route_table.Private_route.id}"
}