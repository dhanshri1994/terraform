provider "aws" {
    region = var.region
}

resource "aws_instance" "test" {
    ami = var.image_id
    instance_type = var.instance_type
    tags = var.tags
}