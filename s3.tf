resource "aws_s3_bucket" "jibberchat_storage_bucket" {
  bucket = "jibberchat-storage"

  tags = {
    Name        = "JibberChat Storage Bucket"
    Environment = "production"
  }
}