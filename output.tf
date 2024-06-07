# outputs.tf
# Outputs are useful to display information after deployments.
# They can also be used in other parts of the Terraform code
# if these files were being used as modules.

output "jibberchat_eks_cluster_endpoint" {
  description = "Endpoint for EKS cluster control plane"
  value       = module.eks.cluster_endpoint
}

output "jibberchat_s3_bucket_name" {
  description = "The name of the S3 bucket for JibberChat"
  value       = aws_s3_bucket.jibberchat_bucket.id
}

