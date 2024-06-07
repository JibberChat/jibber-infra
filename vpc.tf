# vpc.tf
# Sets up VPC resources using the Terraform AWS VPC module.
# This module abstracts the complexity and creates a VPC along with subnets,
# NAT gateways, and other components.

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
