module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones = var.availability_zones
}

module "security_groups" {
  source = "./modules/security_groups"

  vpc_id          = module.vpc.vpc_id
  security_groups = var.security_groups
}

module "ec2" {
  source = "./modules/ec2"

  ami              = var.ami
  instance_type    = var.instance_type
  key_name         = var.key_name
  public_subnet_id = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
}

module "bastion" {
  source = "./modules/bastion"

  ami                = var.ami
  bastion_instance_type = var.bastion_instance_type
  key_name           = var.key_name
  public_subnet_id   = module.vpc.public_subnet_id
  security_group_id  = module.security_groups.security_group_ids.public_sg
}