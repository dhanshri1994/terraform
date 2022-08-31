provider "aws" {
    region = var.region
}

resource "aws_instance" "linux" {
    instance_type = var.instance_type
    ami = "ami-090fa75af13c156b4"
}