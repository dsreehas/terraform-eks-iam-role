# Create IAM role
resource "aws_iam_role" "iam_role" {
  name                 = var.role_name
  description          = var.role_description
  assume_role_policy   = var.assume_role_policy
  max_session_duration = var.max_session_duration
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  tags                 = var.tags
}

# Create inline policies
resource "aws_iam_role_policy" "inline_policies" {
  count  = length(var.inline_policies)
  name   = "inline-policy-${count.index}"
  role   = aws_iam_role.iam_role.name
  policy = var.inline_policies[count.index]
}

# Attach managed policies
resource "aws_iam_role_policy_attachment" "managed_policy_attachments" {
  count      = length(var.managed_policy_arns)
  role       = aws_iam_role.iam_role.name
  policy_arn = var.managed_policy_arns[count.index]
}

# Create IAM instance profile
resource "aws_iam_instance_profile" "instance_profile" {
  count = var.create_instance_profile ? 1 : 0
  name  = var.instance_profile_name
  role  = aws_iam_role.iam_role.name
}
