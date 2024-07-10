output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = var.cluster_name
}

output "region" {
  description = "The AWS region"
  value       = var.region
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}
