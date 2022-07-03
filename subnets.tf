resource "aws_subnet" "subnet1-public" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "10.90.1.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "Subnet-1"
    }
}

resource "aws_subnet" "subnet2-public" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "10.90.2.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name = "Subnet-2"
    }
}

resource "aws_subnet" "subnet3-public" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "10.90.3.0/24"
    availability_zone = "us-east-1c"

    tags = {
        Name = "Subnet-3"
    }
	
}