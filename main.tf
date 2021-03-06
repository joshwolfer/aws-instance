provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "ubuntu" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = "joshwolfer"
    Owner = "jwolfer@hashicorp.com"
    Some = "test"
  }
}
