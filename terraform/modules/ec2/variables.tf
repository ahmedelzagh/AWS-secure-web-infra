variable "ami" {
  description = "AMI ID for EC2 instances"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "key_name" {
  description = "Key pair for EC2 instances"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
}

variable "private_subnet_id" {
  description = "The ID of the private subnet"
}