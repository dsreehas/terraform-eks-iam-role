variable "aws_region" {
  description = "Specified AWS region"
}

variable "aws_profile" {
  description = "Specified AWS profile"
}

variable "assume_role_policy" {
  description = "Policy to assume a role"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of the role"
  type        = string
  default     = null
}

variable "inline_policy" {
  description = "Set of IAM inline policies associated with the IAM role"
  type = list(object({
    name   = string
    policy = string
  }))
  default = []
}

variable "managed_policy_arns" {
  description = "Set of IAM managed policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = null
}

variable "max_session_duration" {
  description = "Maximum session duration (in seconds) to set for the specified role"
  type        = number
  default     = null
}

variable "name" {
  description = "Name of the role"
  type        = string
  default     = null
}

variable "path" {
  description = "Path to the role"
  type        = string
  default     = null
}

variable "tags" {
  description = "Key-value mapping of tags for the IAM role"
  type        = map(string)
  default     = {}
}

variable "policies_count" {
  description = "Number of AWS policies provided in the policies variable"
  type        = number
  default     = 0
}

variable "policies" {
  description = "ARNs of policies to directly attach to the role"
  type        = list(string)
  default     = []
}

variable "json_policies_count" {
  description = "Number of JSON formatted inline policies provided in the json_policies variable"
  type        = number
  default     = 0
}

variable "json_policies" {
  description = "JSON formatted inline policies for the role"
  type        = list(string)
  default     = []
}

variable "aws_identifiers" {
  description = "List of identifiers for principal of type AWS, these are IAM user or role ARNs"
  type        = list(string)
  default     = []
}

variable "service_identifiers" {
  description = "List of identifiers for principal of type Service"
  type        = list(string)
  default     = []
}
