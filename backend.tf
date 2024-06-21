terraform {
  backend "s3" {
    bucket         = "jibber-chat-terraform-state"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "jibber-chat-terraform-lock"
  }
}