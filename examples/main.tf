module "role_basic" {
  source              = "/Users/user/Documents/GitHub/terraform-iam-role/"
  name                = "basic"
   iam_role_name = "test-role"
  description         = "Basic role that every IAM users in this account can assume to have ReadOnly access"
  managed_policy_arns = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
}


