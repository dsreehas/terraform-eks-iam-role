variable "aws_region" {
  description = "AWS region"
}

variable "aws_profile" {
  description = "AWS profile"
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "empty-role"
}
