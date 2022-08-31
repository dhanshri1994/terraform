provider "aws" {
  region = "us-east-1"
}

module "ec2-cloudwatch" {
  source = "./ec2-cloudwatch/"
}