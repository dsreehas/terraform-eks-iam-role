variable "aws_region" {
  description = "AWS region"
  type = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "demo-cluster"
}