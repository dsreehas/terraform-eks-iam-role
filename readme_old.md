# Terraform AWS IAM Role Module

## Overview

This Terraform module is designed to create AWS IAM roles with appropriate inline or managed policies.

## Usage

### IAM Role with No Attached Policies

    module "iam_role" {
      source             = "github.com/dsreehas/terraform-iam-role"
      role_name          = var.role_name
      assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
    }


### IAM Role with Single Inline Policy

    module "iam_role" {
      source             = "github.com/dsreehas/terraform-iam-role"
      role_name          = var.role_name
      assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "lambda.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
      inline_policies = [
        <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": [
            "s3:ListBucket"
          ],
          "Resource": [
            "arn:aws:s3:::example-bucket"
          ]
        }
      ]
    }
    EOF
      ]
    }

### IAM Role with Single Managed Policy

    module "iam_role" {
      source              = "github.com/dsreehas/terraform-iam-role"
      role_name           = var.role_name
      assume_role_policy  = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "ecs-tasks.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
      managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
    }

### IAM Role with Multiple Inline Policies

    module "iam_role_with_inline_policies" {
      source             = "github.com/dsreehas/terraform-iam-role"
      role_name          = var.role_name
      assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
      inline_policies = [
        <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": [
            "s3:ListBucket",
            "s3:GetBucketLocation"
          ],
          "Resource": [
            "arn:aws:s3:::example-bucket"
          ]
        }
      ]
    }
    EOF
        ,
        <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": [
            "dynamodb:DescribeTable",
            "dynamodb:Scan"
          ],
          "Resource": [
            "arn:aws:dynamodb:*:*:table/example-table"
          ]
        }
      ]
    }
    EOF
        ,
        <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
          ],
          "Resource": "*"
        }
      ]
    }
    EOF
      ]
    }

### IAM Role with Multiple Managed Policies

    module "iam_role_with_managed_policies" {
      source             = "github.com/dsreehas/terraform-iam-role"
      role_name          = var.role_name
      assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "lambda.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
      managed_policy_arns = [
        "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
        "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess",
        "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
      ]
    }
### IAM Role with Multiple Inline and Managed Policies

        module "iam_role" {
          source             = "github.com/dsreehas/terraform-iam-role"
          role_name          = var.role_name
          assume_role_policy = <<EOF
        {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Principal": {
                "Service": "ec2.amazonaws.com"
              },
              "Action": "sts:AssumeRole"
            }
          ]
        }
        EOF
          inline_policies = [
            <<EOF
        {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Action": [
                "s3:ListBucket"
              ],
              "Resource": [
                "arn:aws:s3:::example-bucket"
              ]
            }
          ]
        }
        EOF
            ,
            <<EOF
        {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Action": [
                "dynamodb:DescribeTable"
              ],
              "Resource": [
                "arn:aws:dynamodb:*:*:table/example-table"
              ]
            }
          ]
        }
        EOF
          ]
          managed_policy_arns = [
            "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
            "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess"
          ]
        }

### Output Values

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

    output "iam_role_managed_policy_arns" {
      description = "Managed policy ARNs attached to the IAM role"
      value       = module.iam_role.iam_role_managed_policy_arns
    }
