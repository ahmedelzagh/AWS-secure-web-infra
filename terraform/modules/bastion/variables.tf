variable "ami" {
  description = "AMI ID for Bastion host"
}

variable "bastion_instance_type" {
  description = "Instance type for the bastion host"
  default     = "t3.micro"
}

variable "key_name" {
  description = "Key pair for Bastion host"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
}

variable "security_group_id" {
  description = "The ID of the security group for the Bastion host"
}