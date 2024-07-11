resource "aws_ecr_repository" "gateway_registry" {
  name                 = var.gateway_registry_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
