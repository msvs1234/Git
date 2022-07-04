resource "aws_instance" "ec2-1" {
count = 3
ami = "ami-0729e439b6769d6ab" 
instance_type = "t2.micro"
key_name = "aws"
subnet_id = "${element(aws_subnet.aws_publicsubnets.*.id, count.index)}"
vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
associate_public_ip_address = true
tags = {
    Name = "server-${count.index+1}"
}
}