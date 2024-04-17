variable "aws_region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}
variable "name" {
  type        = string
  description = "The name of the role. If omitted, Terraform will assign a random, unique name."
}

variable "assume_role_policy" {
  type        = string
  description = "The policy that grants an entity permission to assume the role."
}

variable "policy" {
  type        = string
  description = "The policy document. This is a JSON formatted string."
}

# variable "policies" {
#   description = "List of policies to attach to the IAM role"
#   type        = list(object({
#     name   = string
#     policy = string
#   }))
#   default     = []
# }

variable "path" {
  default     = "/"
  type        = string
  description = "Path in which to create the role and the policy."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the role and the policy."
}

variable "environment" {
  default     = null
  type        = string
  description = "env name"
}
variable "application_name" {
  default     = null
  type        = string
  description = "application_name"
}
variable "cost_center_id" {
  default     = null
  type        = string
  description = "cost_center_id"
}
variable "application_portfolio" {
  default     = null
  type        = string
  description = "application_portfolio"
}
variable "app_team_name" {
  default     = null
  type        = string
  description = "app_team_name"

}
variable "email_id" {
  default     = null
  type        = string
  description = "email_id"

}
variable "tags" {
  default     = null
  type        = map(string)
  description = "tags"

}