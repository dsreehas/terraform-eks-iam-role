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
  default     = "multiple-managed-policies-role"
}

variable "managed_policy_arns" {
  description = "List of ARNs for managed policies to attach"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess", "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess", "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"]
}