output "iam_role_with_managed_policies_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_arn
}

output "iam_role_with_managed_policies_name" {
  description = "The name of the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_name
}

output "iam_role_with_managed_policies_assume_role_policy" {
  description = "The IAM assume role policy associated with the role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_assume_role_policy
}

output "iam_role_with_managed_policies_managed_policy_arns" {
  description = "The managed policy ARNs attached to the IAM role with managed policies"
  value       = module.iam_role_with_managed_policies.iam_role_managed_policy_arns
}