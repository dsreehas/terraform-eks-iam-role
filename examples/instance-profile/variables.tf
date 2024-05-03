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
  description = "Name of the Instance Profile role"
  type        = string
  default     = "new-instance-profile-role"
}

variable "create_instance_profile" {
  description = "Whether to create an instance profile or not"
  type        = bool
  default     = false
}

variable "managed_policy_arns" {
  description = "List of managed policies ARNs to attach"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess", "arn:aws:iam::aws:policy/CloudWatchLogsReadOnlyAccess"]
}
