output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.vpc.private_subnet_id
}

output "public_instance_id" {
  description = "The ID of the public EC2 instance"
  value       = module.ec2.public_instance_id
}

output "private_instance_id" {
  description = "The ID of the private EC2 instance"
  value       = module.ec2.private_instance_id
}

output "security_group_ids" {
  description = "The security group IDs for both public and private instances"
  value       = module.security_groups.security_group_ids
}

output "bastion_host_id" {
  description = "The ID of the Bastion host"
  value       = module.bastion.bastion_host_id
}

output "bastion_host_public_ip" {
  description = "The public IP of the Bastion host"
  value       = module.bastion.bastion_host_public_ip
}