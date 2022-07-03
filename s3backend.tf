terraform {
backend "s3" {
bucket = "gitbucket007"
key = "gitbucket007.tfstate"
region = "us-east-1"
}
}