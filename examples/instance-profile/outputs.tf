output "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.iam_role.iam_role_arn
}

output "iam_role_name" {
  description = "Name of the IAM role"
  value       = module.iam_role.iam_role_name
}

output "iam_instance_profile_arn" {
  description = "The ARN assigned by AWS to the instance profile"
  value       = aws_iam_instance_profile.iam_instance_profile.arn
}

output "iam_instance_profile_name" {
  description = "The name of the instance profile"
  value       = aws_iam_instance_profile.iam_instance_profile.name
}
