output "iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.iam_role.arn
}

output "iam_role_name" {
  description = "The name of the IAM role"
  value       = aws_iam_role.iam_role.name
}

output "iam_role_assume_role_policy" {
  description = "The IAM assume role policy associated with the role"
  value       = aws_iam_role.iam_role.assume_role_policy
}

output "iam_role_inline_policies" {
  description = "The inline policies attached to the IAM role"
  value       = aws_iam_role_policy.inline_policies[*].policy
}

output "iam_role_managed_policy_arns" {
  description = "The managed policy ARNs attached to the IAM role"
  value       = aws_iam_role_policy_attachment.managed_policy_attachments[*].policy_arn
}

output "iam_instance_profile_name" {
  description = "The name of the instance profile"
  value       = aws_iam_instance_profile.instance_profile.name
}

output "iam_instance_profile_arn" {
  description = "The ARN of the instance profile"
  value       = aws_iam_instance_profile.instance_profile.arn
}
