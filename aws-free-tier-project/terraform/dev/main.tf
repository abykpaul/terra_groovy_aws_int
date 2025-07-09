provider "aws" {
  region = var.region
}

resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "${var.env}-instance"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.env}-free-tier-bucket-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}