<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.inline_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.managed_policy_attachments](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | Assume role policy document | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of the IAM role | `string` | n/a | yes |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | Selected AWS profile | `string` | `null` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Specified AWS region | `string` | `null` | no |
| <a name="input_create_instance_profile"></a> [create\_instance\_profile](#input\_create\_instance\_profile) | Whether to create an instance profile or not | `bool` | `false` | no |
| <a name="input_inline_policies"></a> [inline\_policies](#input\_inline\_policies) | List of inline policy documents | `list(string)` | `[]` | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | Name of the instance profile | `string` | `null` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | List of managed policy ARNs | `list(string)` | `[]` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | Maximum session duration for the IAM role | `number` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Path for the IAM role | `string` | `null` | no |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | Permissions boundary for the role | `string` | `null` | no |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | Description of the IAM role | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the IAM role | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_instance_profile_arn"></a> [iam\_instance\_profile\_arn](#output\_iam\_instance\_profile\_arn) | ARN of the instance profile |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | ARN of the IAM role |
| <a name="output_iam_role_assume_role_policy"></a> [iam\_role\_assume\_role\_policy](#output\_iam\_role\_assume\_role\_policy) | IAM assume role policy associated with the role |
| <a name="output_iam_role_description"></a> [iam\_role\_description](#output\_iam\_role\_description) | Description of the IAM role |
| <a name="output_iam_role_inline_policies"></a> [iam\_role\_inline\_policies](#output\_iam\_role\_inline\_policies) | Inline policies attached to the IAM role |
| <a name="output_iam_role_managed_policy_arns"></a> [iam\_role\_managed\_policy\_arns](#output\_iam\_role\_managed\_policy\_arns) | Managed policy ARNs attached to the IAM role |
| <a name="output_iam_role_max_session_duration"></a> [iam\_role\_max\_session\_duration](#output\_iam\_role\_max\_session\_duration) | Maximum session duration for the IAM role |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | Name of the IAM role |
| <a name="output_iam_role_path"></a> [iam\_role\_path](#output\_iam\_role\_path) | Path of the IAM role |
| <a name="output_iam_role_permissions_boundary"></a> [iam\_role\_permissions\_boundary](#output\_iam\_role\_permissions\_boundary) | Permissions boundary for the IAM role |
| <a name="output_iam_role_tags"></a> [iam\_role\_tags](#output\_iam\_role\_tags) | Tags for the IAM role |
<!-- END_TF_DOCS -->
