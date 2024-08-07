module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.9.0"
  name    = var.vpc_name

  cidr            = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  azs                = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = true
    Environment = var.environment
  }
}
