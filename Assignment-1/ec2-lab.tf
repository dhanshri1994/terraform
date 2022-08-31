provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "windows_instance" {
    instance_type = "t2.micro"
    ami = "ami-0c95d38b24a19de18"
}