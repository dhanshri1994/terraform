provider "aws" {
    region = "us-east-1"
}

module "s3-lab" {
    source = "../s3-website-module/"
    bucket_prefix = "this is a test bucket"
}