resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name
  associate_public_ip_address = true

user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              echo "<h1>Welcome to ${var.environment} instance</h1>" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
            EOF
  tags = {
    Name        = "${var.name}-ec2"
    Environment = var.environment
  }
}
