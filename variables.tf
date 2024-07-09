variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "ecr_repo_name" {
  description = "The ECR repository name"
  type        = string
  default     = "jibber-ecr-registry"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "bucket_name" {
  description = "s3 bucket name"
  type        = string
}
