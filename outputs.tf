output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = aws_iam_role.iam_role.arn
}

output "iam_role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.iam_role.name
}

output "iam_role_description" {
  description = "Description of the IAM role"
  value       = aws_iam_role.iam_role.description
}

output "iam_role_assume_role_policy" {
  description = "IAM assume role policy associated with the role"
  value       = aws_iam_role.iam_role.assume_role_policy
}

output "iam_role_inline_policies" {
  description = "Inline policies attached to the IAM role"
  value       = aws_iam_role_policy.inline_policies[*].policy
}

output "iam_role_managed_policy_arns" {
  description = "Managed policy ARNs attached to the IAM role"
  value       = aws_iam_role_policy_attachment.managed_policy_attachments[*].policy_arn
}

output "iam_role_max_session_duration" {
  description = "Maximum session duration for the IAM role"
  value       = aws_iam_role.iam_role.max_session_duration
}

output "iam_role_path" {
  description = "Path of the IAM role"
  value       = aws_iam_role.iam_role.path
}

output "iam_role_permissions_boundary" {
  description = "Permissions boundary for the IAM role"
  value       = aws_iam_role.iam_role.permissions_boundary
}

output "iam_role_tags" {
  description = "Tags for the IAM role"
  value       = aws_iam_role.iam_role.tags
}

output "iam_instance_profile_arn" {
  description = "ARN of the instance profile"
  value       = try(aws_iam_instance_profile.instance_profile[0].arn, null)
}
