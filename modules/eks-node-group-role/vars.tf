variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "worker_node_policy_arn" {
  description = "ARN of the IAM policy to attach to worker nodes"
  default     = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

variable "cni_policy_arn" {
  description = "ARN of the IAM policy to attach for CNI"
  default     = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

variable "ecr_read_only_policy_arn" {
  description = "ARN of the IAM policy to attach for ECR read-only access"
  default     = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}