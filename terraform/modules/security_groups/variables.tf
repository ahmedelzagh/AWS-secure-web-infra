variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "security_groups" {
  description = "Map of security groups with ingress rules"
  type        = map(object({
    description   = string
    ingress_ports = list(number)
  }))
}