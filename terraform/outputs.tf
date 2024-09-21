output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "public_instance_id" {
  description = "The ID of the public EC2 instance"
  value       = aws_instance.public_instance.id
}

output "public_instance_public_ip" {
  description = "The public IP of the public EC2 instance"
  value       = aws_instance.public_instance.public_ip
}

output "private_instance_id" {
  description = "The ID of the private EC2 instance"
  value       = aws_instance.private_instance.id
}

output "security_group_ids" {
  description = "The security group IDs for both public and private instances"
  value = {
    public_sg  = aws_security_group.public_instance_sg.id
    private_sg = aws_security_group.private_instance_sg.id
  }
}

output "bastion_host_id" {
  description = "The ID of the Bastion host"
  value       = aws_instance.bastion.id
}

output "bastion_host_public_ip" {
  description = "The public IP of the Bastion host"
  value       = aws_instance.bastion.public_ip
}

