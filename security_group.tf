
resource "aws_security_group" "tool_server_1" {
  vpc_id = "vpc-596aab20"
  name   = "tool-server1-security-group"

  # allow ingress of port 22
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # allow ingress of port 8080
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
  }

  # allow ingress of port 80
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }

  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    description = "toolserver_one"
  }
}

resource "aws_security_group" "tool_server_2" {
  vpc_id = "vpc-596aab20"
  name   = "tool-server2-security-group"

  # allow ingress of port 22
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    description = "toolserver_two"
  }
}

resource "aws_security_group" "build_server" {
  vpc_id = "vpc-596aab20"
  name   = "tool-server3-security-group"

  # allow ingress of port 22
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # allow ingress of port 80
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }

  # allow ingress of port 8080
  ingress {
    cidr_blocks = var.ingressCIDRblock
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
  }

  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    description = "toolserver_three"
  }
}

