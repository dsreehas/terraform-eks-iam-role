module "iam_role_with_inline_policies" {
  source             = "github.com/dsreehas/terraform-iam-role"
  role_name          = var.role_name
  assume_role_policy = file("./policies/assume_role_policy.json")
  inline_policies    = [file("./policies/inline_policy_1.json"), file("./policies/inline_policy_2.json"), file("./policies/inline_policy_3.json")]

}