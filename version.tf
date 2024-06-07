# versions.tf
# Specify the required versions of Terraform and any providers.


#   backend "s3" {
#     bucket         = "tf-state-jibberchat"
#     key            = "environment/terraform.tfstate"
#     region         = "us-west-2"
#     dynamodb_table = "tf-state-lock"
#   }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
