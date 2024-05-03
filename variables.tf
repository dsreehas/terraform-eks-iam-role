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

variable "instance_profile_name" {
  description = "Name of the instance profile"
  type        = string
  default     = null
}

variable "role_description" {
  description = "Description of the IAM role"
  type        = string
  default     = null
}

variable "max_session_duration" {
  description = "Maximum session duration for the IAM role"
  type        = number
  default     = null
}

variable "path" {
  description = "Path for the IAM role"
  type        = string
  default     = null
}

variable "permissions_boundary" {
  description = "Permissions boundary for the role"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for the IAM role"
  type        = map(string)
  default     = {}
}

# variable "create_instance_profile" {
#   description = "Whether to create an instance profile or not"
#   type        = bool
#   default     = false
# }
