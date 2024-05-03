module "iam_role_with_managed_policies" {
  source = "/Users/user/Documents/GitHub/terraform-eks-iam-role/"

  role_name           = var.role_name
  role_description    = var.role_description
  assume_role_policy  = file("./policies/assume_role_policy.json")
  managed_policy_arns = var.managed_policy_arns

  max_session_duration = var.max_session_duration
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  tags                 = var.tags
}
