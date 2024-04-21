# Create IAM role
resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

# Conditionally create inline policies
resource "aws_iam_role_policy" "inline_policies" {
  count  = length(var.inline_policies)
  name   = "inline-policy-${count.index}"
  role   = aws_iam_role.this.id
  policy = var.inline_policies[count.index]
}

# Conditionally attach managed policies
resource "aws_iam_role_policy_attachment" "managed_policy_attachments" {
  count      = length(var.managed_policy_arns)
  role       = aws_iam_role.this.name
  policy_arn = var.managed_policy_arns[count.index]
}