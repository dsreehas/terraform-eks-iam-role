variable "aws_region" {
  description = "AWS region"
  type = string
}

# variable "aws_access_key" {
#   description = "AWS access key"
#   type = string
# }

# variable "aws_secret_key" {
#   description = "AWS secret key"
#   type = string
# }

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "demo-cluster"
}