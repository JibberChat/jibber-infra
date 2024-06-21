output "s3_bucket_id" {
  value = aws_s3_bucket.tf_state_bucket.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.tf_state_bucket.arn
}

output "dynamodb_table_id" {
  value = aws_dynamodb_table.tf_state_lock.id
}

output "kms_key_id" {
  value = aws_kms_key.mykey.id
}

output "kms_key_arn" {
  value = aws_kms_key.mykey.arn
}