provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example_new" {
    instance_type = "t2.micro"
    ami = "ami-090fa75af13c156b4"
    tags = {
      "Name" = "Linux_new"
    }
}

resource "aws_ebs_volume" "example" {
    availability_zone = aws_instance.example_new.availability_zone
    size = 20
}

resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.example.id
    instance_id = aws_instance.example_new.id
}
