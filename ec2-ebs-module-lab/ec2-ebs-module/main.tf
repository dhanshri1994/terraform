resource "aws_instance" "amazon" {
    ami = data.aws_ami.amazon-linux.id
    instance_type = "t2.micro"
}

data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220805.0-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.amazon.id
}

resource "aws_ebs_volume" "example" {
  availability_zone = aws_instance.amazon.availability_zone
  size              = 1
}