provider "aws" {
  region = var.region
}

module "state-management" {
  source                  = "./modules/state-management"
  s3_bucket_name          = "jibber-chat-terraform-state"
  dynamodb_table_name     = "jibber-chat-terraform-lock"
  environment             = "production"
  dynamodb_read_capacity  = 5
  dynamodb_write_capacity = 5
}
