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



# variable "force_detach_policies" {
#   default     = false
#   type        = bool
#   description = "Specifies to force detaching any policies the role has before destroying it."
# }