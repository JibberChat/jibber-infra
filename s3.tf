resource "aws_s3_bucket" "jibberchat_storage_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "JibberChat Storage Bucket"
    Environment = var.environment
  }
}
