variable "aws_region" {
  description = "Selected AWS region"
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
  default     = "multiple-managed-policies-role"
}

variable "managed_policy_arns" {
  description = "List of managed policies ARNs to attach"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"]
}
