module "iam_role" {
  source             = "github.com/dsreehas/terraform-eks-iam-role"
  role_name          = var.role_name
  assume_role_policy = file("./policies/assume_role_policy.json")
  inline_policies    = [file("./policies/inline_policy.json")]
}