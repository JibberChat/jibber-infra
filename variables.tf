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
