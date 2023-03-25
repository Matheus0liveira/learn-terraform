variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}
variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "learn-terraform"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-00c39f71452c08778"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Course Aws with Terraform"
  }
}