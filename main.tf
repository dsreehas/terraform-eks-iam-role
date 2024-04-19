resource "aws_iam_role" "default" {
  name               = var.name
  assume_role_policy = var.assume_role_policy
  path               = var.path
  description        = var.description
}

resource "aws_iam_policy" "default" {
  count             = length(var.policies) > 0 ? 1 : 0
  name              = var.name
  policy            = var.policies[count.index]
  path              = var.path
  description       = var.description
}

resource "aws_iam_role_policy_attachment" "default" {
  count      = length(var.policy_arns)
  role       = aws_iam_role.default.name
  policy_arn = var.policy_arns[count.index]
}
