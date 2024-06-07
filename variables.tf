# variables.tf
# Definition of variables that are used across the Terraform configuration.
# This allows customization for different environments and reusability.

variable "aws_region" {
  type        = string
  description = "AWS region to deploy the resources into"
  default     = "us-west-2"
}

variable "aws_profile" {
  type        = string
  description = "Named profile to connect to the AWS account"
  default     = "default"
}

variable "environment" {
  type    = string
  default = "dev"
}

