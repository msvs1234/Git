terraform{
    backend "s3" {
    bucket = "GitBucket"
    key = "gitbucket.tfstate"
    region = "us-east-1"
    }
}