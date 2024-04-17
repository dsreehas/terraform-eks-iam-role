module "iam_role" {
  source             = "../"
  name               = "EC2 Role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  policy             = data.aws_iam_policy_document.policy.json
  path        = "/ec2/"
  description = "Describe EC2"
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
    ]
  }
}

data "aws_iam_policy_document" "policy" {
  statement {
    effect = "Allow"

    actions = [
      "ec2:Describe*",
    ]

    resources = ["*"]
  }
}