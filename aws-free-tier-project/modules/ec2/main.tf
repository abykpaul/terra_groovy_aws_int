resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install apache2 -y
              echo "<h1>Welcome to ${var.environment} instance</h1>" > /var/www/html/index.html
              sudo systemctl start apache2
              sudo systemctl enable apache2
            EOF
  tags = {
    Name        = "${var.name}-ec2"
    Environment = var.environment
  }
}
