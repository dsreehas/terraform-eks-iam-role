variable "aws_region" {
  description = "Specified AWS region"
  type        = string
  default     = null

}

variable "aws_profile" {
  description = "Selected AWS profile"
  type        = string
  default     = null
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "Assume role policy document"
  type        = string
}

variable "inline_policies" {
  description = "List of inline policy documents"
  type        = list(string)
  default     = []
}

variable "managed_policy_arns" {
  description = "List of managed policy ARNs"
  type        = list(string)
  default     = []
}
