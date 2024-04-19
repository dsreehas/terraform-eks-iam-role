variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  type        = string
  description = "The name of the role. If omitted, Terraform will assign a random, unique name."
  default = "test-iam-role"
}

variable "assume_role_policy" {
  type        = string
  description = "The policy that grants an entity permission to assume the role."
}

variable "policies" {
  type        = list(string)
  description = "A list of policy documents. Each policy is a JSON formatted string."
  default     = []
}

variable "policy_arns" {
  type        = list(string)
  description = "A list of ARNs for existing policies to attach to the IAM role."
}

variable "path" {
  default     = "/"
  type        = string
  description = "Path in which to create the role and the policies."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the role and the policies."
}