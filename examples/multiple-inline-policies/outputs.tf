output "iam_role_with_inline_policies_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role with inline policies"
  value       = module.iam_role_with_inline_policies.iam_role_arn
}

output "iam_role_with_inline_policies_name" {
  description = "The name of the IAM role with inline policies"
  value       = module.iam_role_with_inline_policies.iam_role_name
}

output "iam_role_with_inline_policies_assume_role_policy" {
  description = "The IAM assume role policy associated with the role with inline policies"
  value       = module.iam_role_with_inline_policies.iam_role_assume_role_policy
}

output "iam_role_with_inline_policies_inline_policies" {
  description = "The inline policies attached to the IAM role with inline policies"
  value       = module.iam_role_with_inline_policies.iam_role_inline_policies
}
