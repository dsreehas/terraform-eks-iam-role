variable "aws_region" {
  description = "AWS region"
}

variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}