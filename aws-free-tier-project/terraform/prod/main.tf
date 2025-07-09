module "vpc" {
  source              = "../../modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
  name                = var.name
  environment         = var.environment
}
module "sg" {
  source      = "../../modules/sg"
  vpc_id      = module.vpc.vpc_id
  name        = var.name
  environment = var.environment
}

module "iam" {
  source      = "../../modules/iam"
  name        = var.name
  environment = var.environment
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = var.ami_id # Amazon Linux 2 Free Tier
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.sg.security_group_id
  key_name          = var.key_name
  name              = var.name
  environment       = var.environment
}
