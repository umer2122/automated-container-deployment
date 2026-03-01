provider "aws" {
  region = "eu-north-1"
}

root_block_device {
  volume_size = 20
  volume_type = "gp2"
}

resource "aws_security_group" "flask_sg" {
  name_prefix = "flask-sg-"

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
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
