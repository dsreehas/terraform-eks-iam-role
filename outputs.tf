output "assume_role_policy" {
  description = "Policy that grants an entity permission to assume the role"
  value       = aws_iam_role.role.assume_role_policy
}

output "description" {
  description = "Description of the role"
  value       = aws_iam_role.role.description
}

output "inline_policy" {
  description = "Set of IAM inline policies associated with the IAM role"
  value       = aws_iam_role.role.inline_policy
}

output "managed_policy_arns" {
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role"
  value       = aws_iam_role.role.managed_policy_arns
}

output "path" {
  description = "Path to the role"
  value       = aws_iam_role.role.path
}

output "tags" {
  description = "Key-value mapping of tags for the IAM role"
  value       = aws_iam_role.role.tags
}

output "arn" {
  description = "Amazon Resource Name (ARN) of the role"
  value       = aws_iam_role.role.arn
}

output "name" {
  description = "Name of the role"
  value       = aws_iam_role.role.name
}

output "policies_attachment" {
  description = "Managed IAM Policies attached to the IAM role"
  value       = var.policies
}

output "policies" {
  description = "The role policy ID, in the form of role_name:role_policy_name."
  value       = aws_iam_role_policy.role[*].id
}
