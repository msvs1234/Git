resource "aws_vpc" "default" {
    cidr_block = "10.100.0.0/16"
    enable_dns_hostnames = true
    tags = {
    Name = "GitVPC"
	Owner = "Subhash"
	environment = "DEV"
    }
}