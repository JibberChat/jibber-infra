# eks.tf
# Defines the EKS cluster setup using AWS EKS module.
# This manages all the details involved in setting up an EKS cluster.

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.13.1"
  cluster_version = 1
  vpc_id          = ""
  cluster_name    = format("jibberchat-eks-%s", var.environment)

  tags = {
    "Name"        = "JibberChat EKS Cluster"
    "Environment" = var.environment
  }
}
