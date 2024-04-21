variable "aws_region" {
  description = "Specified AWS region"
  type        = string
  default     = null

}

variable "aws_profile" {
  description = "Specified AWS profile"
  type        = string
  default     = null
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "single-managed-policy-role"
}