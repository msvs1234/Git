variable vpc_cidr {}
variable vpc_name {}
variable vpc_igw {}
variable vpc_purt{}
variable vpc_pvrt{}
variable public_subnets{
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"]
}
variable public_cidr{
    type = list
    default = ["10.60.1.0/24","10.60.2.0/24","10.60.3.0/24"]
}
variable private_subnets{
    type = list
    default = ["us-east-1d","us-east-1e","us-east-1f"]
}
variable private_cidr{
    type = list
    default = ["10.60.10.0/24","10.60.20.0/24","10.60.30.0/24"]
}