# IAM policy document
data "aws_iam_policy_document" "iam_assumeRole_generic" {
  policy_id = "AssumeRole"
  statement {
    sid     = "AllowAssumeRole"
    actions = ["sts:AssumeRole"]
    effect  = "Allow"
  }
}
# Create the IAM role
resource "aws_iam_role" "role" {
  assume_role_policy = try(var.assume_role_policy, data.aws_iam_policy_document.iam_assumeRole_generic.json)
  description        = var.description

  dynamic "inline_policy" {
    for_each = var.inline_policy
    content {
      name   = inline_policy.value["name"]
      policy = inline_policy.value["policy"]
    }
  }
  managed_policy_arns = var.managed_policy_arns
  name                = var.name
  path                = var.path
  tags                = var.tags
}

# Attach managed policies to the role
resource "aws_iam_role_policy_attachment" "role" {
  count      = var.policies_count
  role       = aws_iam_role.role.name
  policy_arn = element(var.policies, count.index)
}

# Attach inline policies to the role
resource "aws_iam_role_policy" "role" {
  count  = var.json_policies_count
  role   = aws_iam_role.role.name
  name   = "${var.name}-${count.index}"
  policy = element(var.json_policies, count.index)
}
