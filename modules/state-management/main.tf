resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = var.s3_bucket_name

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = var.s3_bucket_name
    Environment = var.environment
  }
}

resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.tf_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "state_encryption" {
  bucket = aws_s3_bucket.tf_state_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}


resource "aws_dynamodb_table" "tf_state_lock" {
  name         = var.dynamodb_table_name
  billing_mode = "PROVISIONED"
  read_capacity = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = var.dynamodb_table_name
    Environment = var.environment
  }
}