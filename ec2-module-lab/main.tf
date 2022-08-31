provider "aws" {
    region = "us-east-1"
}

module "ec2-lab" {
    source = "./ec2-module/"
}