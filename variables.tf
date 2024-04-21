variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "iam_role_module_enabled" {
  description = "Whether to create the resources."
  type        = bool
  // `false` prevents the module from creating any resources
  default     = false
}

variable "iam_role_name" {
  description = "The name of the role. If omitted, Terraform will assign a random, unique name."
  type        = string
}

variable "iam_role_description" {
  description = "The description of the role."
  type        = string
  default     = "This role is managed by ITSM Terraform/Terragrunt"
}

variable "iam_role_path" {
  description = "The path to the role."
  type        = string
  default     = "/"
}

variable "iam_role_max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role."
  default     = 3600
}

variable "iam_role_tags" {
  description = "Key-value mapping of tags for the IAM role."
  type        = map(string)
  default     = {}
}

variable "iam_role_permissions_boundary_arn" {
  description = "The ARN of the policy that is used to set the permissions boundary for the role."
  type        = string
  default     = ""
}

variable "iam_role_policy_document" {
  description = "The IAM policy to attach to the role (in JSON format)."
  type        = string
  default     = ""
}

variable "iam_role_policies_arns" {
  description = "The list of ARNs of additional policies to attach to the role."
  type        = list(string)
  default     = []
}

## One of the next lists must be non-empty
variable "iam_role_trusted_aws_arns" {
  description = "ARNs of AWS entities who can assume this role."
  type        = list(string)
  default     = []
}

variable "iam_role_trusted_aws_services" {
  description = "Names of AWS services which can assume this role."
  type        = list(string)
  default     = []
}
