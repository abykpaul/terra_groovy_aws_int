vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
azs                 = ["ap-south-1a", "ap-south-1b"]
name                = "free-tier-dev"
environment         = "dev"
instance_type       = "t2.micro"
ami_id              = "ami-0f535a71b34f2d44a"
key_name            = "My-Devops-Key"