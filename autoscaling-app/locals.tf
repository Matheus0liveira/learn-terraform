locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }
  common_tags = {
    Project   = "TODO Serverless App"
    CreatedAt = "2020-03-16"
    ManagedBy = "Terraform"
    Owner     = "Cleber Gasparoto"
    Service   = var.service_name
  }
}
