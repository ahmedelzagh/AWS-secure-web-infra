output "security_group_ids" {
  description = "The security group IDs for both public and private instances"
  value = {
    public_sg  = aws_security_group.public_instance_sg.id
    private_sg = aws_security_group.private_instance_sg.id
  }
}