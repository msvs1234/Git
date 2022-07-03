resource "aws_vpc" "default" {
    cidr_block = "10.100.0.0/16"
    enable_dns_hostnames = true
    tags = {
    Name = "GitVPC1"
	Owner = "Subhash"
	environment = "DEV"
    }
}
resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.default.id}"
	tags = {
        Name = "GITIG1"
    }
}
