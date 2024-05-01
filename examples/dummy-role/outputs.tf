output "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.iam_role.iam_role_arn
}

output "iam_role_name" {
  description = "Name of the IAM role"
  value       = module.iam_role.iam_role_name
}

output "iam_role_assume_role_policy" {
  description = "IAM assume role policy associated with the role"
  value       = module.iam_role.iam_role_assume_role_policy
}
