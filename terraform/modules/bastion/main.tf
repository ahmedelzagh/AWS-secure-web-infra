resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = var.bastion_instance_type
  key_name      = var.key_name
  subnet_id     = var.public_subnet_id

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "Bastion"
  }
}