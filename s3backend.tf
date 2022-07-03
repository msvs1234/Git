terraform {
backend "s3" {
bucket = "git2bucket"
key = "git2bucket.tfstate"
region = "us-east-1"
access_key = "AKIAZQXRD5PP3XGJVIPZ"
secret_key = "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"
}
}