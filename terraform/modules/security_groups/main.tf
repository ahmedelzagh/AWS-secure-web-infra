resource "aws_security_group" "public_instance_sg" {
  description = var.security_groups.public_sg.description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.security_groups.public_sg.ingress_ports[0]
    to_port     = var.security_groups.public_sg.ingress_ports[0]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "private_instance_sg" {
  description = var.security_groups.private_sg.description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.security_groups.private_sg.ingress_ports[0]
    to_port     = var.security_groups.private_sg.ingress_ports[0]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}