output "bastion_host_id" {
  description = "The ID of the Bastion host"
  value       = aws_instance.bastion.id
}

output "bastion_host_public_ip" {
  description = "The public IP of the Bastion host"
  value       = aws_instance.bastion.public_ip
}