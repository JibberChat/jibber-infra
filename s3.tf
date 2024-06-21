# s3.tf
# Defines all configurations related to Amazon S3 resources.
# This includes creating S3 buckets with appropriate policies and settings.

resource "aws_s3_bucket" "jibberchat_bucket" {
  bucket = format("jibberchat-%s", var.environment)

  tags = {
    "Name"        = "JibberChat Application Bucket"
    "Environment" = var.environment
  }
}
