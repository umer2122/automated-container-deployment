provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "web_sg" {
  name        = "web_sg-${random_id.sg_id.hex}"
  description = "Security group for web server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["YOUR_IP/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "random_id" "sg_id" {
  byte_length = 2
}
