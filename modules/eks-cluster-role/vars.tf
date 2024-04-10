variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "iam_policy_arn" {
  description = "ARN of the IAM policy to attach"
  default     = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}
