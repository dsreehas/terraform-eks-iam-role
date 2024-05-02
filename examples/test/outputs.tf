output "iam_role_with_managed_policies_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_arn
}

output "iam_role_with_managed_policies_name" {
  description = "Name of the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_name
}

output "iam_role_with_managed_policies_description" {
  description = "Description of the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_description
}

output "iam_role_with_managed_policies_assume_role_policy" {
  description = "IAM assume role policy associated with the role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_assume_role_policy
}

output "iam_role_with_managed_policies_managed_policy_arns" {
  description = "Managed policy ARNs attached to the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_managed_policy_arns
}

output "iam_role_with_managed_policies_inline_policies" {
  description = "The inline policies attached to the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_inline_policies
}

output "iam_role_with_managed_policies_max_session_duration" {
  description = "The maximum session duration (in seconds) for the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_max_session_duration
}

output "iam_role_with_managed_policies_path" {
  description = "The path associated with the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_path
}

output "iam_role_with_managed_policies_permissions_boundary" {
  description = "The permissions boundary associated with the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_permissions_boundary
}

output "iam_role_with_managed_policies_tags" {
  description = "The tags associated with the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_tags
}

output "iam_instance_profile_arn" {
  description = "The ARN of the instance profile"
  value       = module.iam_role_with_managed_policies.iam_instance_profile_arn
}