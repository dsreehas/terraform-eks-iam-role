module "eks_iam_role" {
  source = "./modules/eks-cluster-role"

  cluster_name = var.cluster_name
}

module "eks_node_group_role" {
  source = "./modules/eks-node-group-role"

  cluster_name = var.cluster_name
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}