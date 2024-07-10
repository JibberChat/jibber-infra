module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"

  cluster_endpoint_public_access = true

  # cluster_addons = {
  #   coredns                = {}
  #   eks-pod-identity-agent = {}
  #   kube-proxy             = {}
  #   vpc-cni                = {}
  # }

  vpc_id = module.vpc.vpc_id

  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.private_subnets

  eks_managed_node_group_defaults = {
    instance_types = ["t4g.small"]
    disk_size      = 20
    ami_type       = "AL2_ARM_64"
  }

  eks_managed_node_groups = {
    ingress = {
      instance_types = ["t4g.small"]
      disk_size      = 20

      min_size     = 2
      max_size     = 4
      desired_size = 2

      tags = {
        Environment = "production"
        Role        = "ingress"
      }
    }

    workers = {
      instance_types = ["t4g.small"]
      disk_size      = 20

      min_size     = 4
      max_size     = 8
      desired_size = 4

      tags = {
        Environment = "production"
        Role        = "workers"
      }
    }
  }

  enable_cluster_creator_admin_permissions = true

  tags = {
    Terraform = true
  }
}
