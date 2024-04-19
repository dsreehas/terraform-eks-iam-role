module "iam_role" {
  source = "github.com/dsreehas/terraform-eks-iam-role"  # Update the source to the actual path of your module

  name               = "complete"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  policies           = [
    data.aws_iam_policy_document.policy1.json,
    data.aws_iam_policy_document.policy2.json
  ]

   policy_arns        = [
    "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess",
    "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  ]  

  path                  = "/ec2/"
  description           = "Describe EC2"
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

data "aws_iam_policy_document" "policy1" {
  statement {
    effect = "Allow"

    actions = [
      "ec2:Describe*",
    ]

    resources = ["*"]
  }
}

data "aws_iam_policy_document" "policy2" {
  statement {
    effect = "Allow"

    actions = [
      "s3:List*",
      "s3:Get*",
    ]

    resources = ["arn:aws:s3:::*"]
  }
}
