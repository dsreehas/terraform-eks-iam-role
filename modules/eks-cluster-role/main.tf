resource "aws_iam_role" "eks_cluster" {
  name               = "eks-cluster-role-${var.cluster_name}"
  assume_role_policy = file("${path.module}/eks-cluster-role.json")
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  policy_arn = var.iam_policy_arn
  role       = aws_iam_role.eks_cluster.name
}
