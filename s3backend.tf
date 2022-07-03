terraform {
backend "s3" {
bucket = "git2bucket"
key = "git2bucket.tfstate"
region = "us-east-1"
}
}