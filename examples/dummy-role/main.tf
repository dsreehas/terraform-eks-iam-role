module "iam_role" {
  source             = "github.com/dsreehas/terraform-iam-role"
  role_name          = var.role_name
  assume_role_policy = file("./policies/assume_role_policy.json")

}
