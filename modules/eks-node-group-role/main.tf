resource "aws_iam_role" "eks_node_group" {
  name               = "eks-node-group-role-${var.cluster_name}"
  assume_role_policy = file("${path.module}/eks-node-group.json")
}

resource "aws_iam_role_policy_attachment" "eks_worker_node_policy" {
  policy_arn = var.worker_node_policy_arn
  role       = aws_iam_role.eks_node_group.name
}

resource "aws_iam_role_policy_attachment" "eks_cni_policy" {
  policy_arn = var.cni_policy_arn
  role       = aws_iam_role.eks_node_group.name
}

resource "aws_iam_role_policy_attachment" "ec2_container_registry_read_only" {
  policy_arn = var.ecr_read_only_policy_arn
  role       = aws_iam_role.eks_node_group.name
}