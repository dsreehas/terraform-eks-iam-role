# Create IAM role
resource "aws_iam_role" "iam_role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
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
  count = var.instance_profile_name != null ? 1 : 0
  name = var.instance_profile_name
  role = aws_iam_role.iam_role.name

}
