variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "gateway_registry_name" {
  description = "The ECR repository name"
  type        = string
  default     = "gateway-ecr-registry"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "bucket_name" {
  description = "s3 bucket name"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "jibber-eks"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "jibber-vpc"
}
