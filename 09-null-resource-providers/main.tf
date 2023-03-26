terraform {
  required_version = "1.4.2"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}


resource "null_resource" "null" {

  triggers = {
    timestamp = timestamp()
  }
  provisioner "local-exec" {
    command = "echo $FOO $BAR $BAZ $TIME >> env_vars.txt"

    environment = {
      FOO  = "bar"
      BAR  = 1
      BAZ  = "true"
      TIME = timestamp()
    }
  }
}
