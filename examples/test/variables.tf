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
  default     = "testing-multiple-managed-policies-role"
}

variable "role_description" {
  description = "Description of the IAM role"
  type        = string
  default     = null
}

variable "managed_policy_arns" {
  description = "List of managed policies ARNs to attach"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess", "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess", "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"]
}

variable "max_session_duration" {
  description = "Maximum session duration for the IAM role"
  type        = number
  default     = 7200
}

variable "path" {
  description = "Path of the IAM role"
  type        = string
  default     = "/ec2-test-path/"
}

variable "permissions_boundary" {
  description = "Permissions boundary for the IAM role"
  type        = string
  default     = "arn:aws:iam::123456789012:policy/MyPermissionsBoundary"
}

variable "tags" {
  description = "Tags for the IAM role"
  type        = map(string)
  default = {
    Environment = "Production"
    Team        = "DevOps"
  }
}
