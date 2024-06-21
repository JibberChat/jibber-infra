variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., production, staging)"
  type        = string
}

variable "dynamodb_read_capacity" {
  description = "Read capacity units for the DynamoDB table"
  type        = number
  default     = 5
}

variable "dynamodb_write_capacity" {
  description = "Write capacity units for the DynamoDB table"
  type        = number
  default     = 5
}