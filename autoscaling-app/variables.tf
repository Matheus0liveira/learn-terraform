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
variable "aws_instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "aws_account_id" {
  type        = number
  description = ""
  default     = 148198459315
}

variable "service_name" {
  type        = string
  description = ""
  default     = "learn-terraform"
}

variable "aws_instance_key_name" {
  type        = string
  description = ""
  default     = "matheus-os"
}

