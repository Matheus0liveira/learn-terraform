# variable "environment" {
#   type        = string
#   description = ""
# }
variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "instance_ami" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Remote State"
    Project = "Course Aws with Terraform"
  }
}

variable "s3_tags" {
  type        = map(string)
  description = ""
  default = {
    Name        = "Remote State"
    Description = "Stores terraform remote state files"
    ManagedBy   = "Terraform"
  }
}
