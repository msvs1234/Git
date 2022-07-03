resource "aws_vpc" "default" {
    cidr_block = "10.90.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "AWS-GIT"
	Owner = "Subbu"
	environment = "DEV"
    }
}
resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.default.id}"
	tags = {
        Name = "AWS-IGW"
    }
}