## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.70.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.70.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iot_certificate.things_cert](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_certificate) | resource |
| [aws_iot_policy.tf_policy](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_policy) | resource |
| [aws_iot_policy_attachment.thing_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_policy_attachment) | resource |
| [aws_iot_thing.aws_publisher_thing](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_thing) | resource |
| [aws_iot_thing.aws_subscriber_thing](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_thing) | resource |
| [aws_iot_thing_principal_attachment.publisher_cert_attachment](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_thing_principal_attachment) | resource |
| [aws_iot_thing_principal_attachment.subscriber_cert_attachment](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_thing_principal_attachment) | resource |
| [aws_iot_thing_type.publisher](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_thing_type) | resource |
| [aws_iot_thing_type.subscriber](https://registry.terraform.io/providers/hashicorp/aws/3.70.0/docs/resources/iot_thing_type) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iot_policy"></a> [iot\_policy](#input\_iot\_policy) | Base64 string containing iot Policy json. See policy/policy.example.json. | `string` | n/a | yes |
| <a name="input_publisher_group"></a> [publisher\_group](#input\_publisher\_group) | Group of publisher things | `string` | `"publisher-app-group"` | no |
| <a name="input_publisher_id_list"></a> [publisher\_id\_list](#input\_publisher\_id\_list) | List of publisher things deployed in AWS. | `list(string)` | <pre>[<br>  "1",<br>  "2",<br>  "3"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region. | `string` | `"us-east-1"` | no |
| <a name="input_sonoff_id_list"></a> [sonoff\_id\_list](#input\_sonoff\_id\_list) | List of subscribers things deployed in AWS. | `list(string)` | <pre>[<br>  "1",<br>  "2",<br>  "3"<br>]</pre> | no |
| <a name="input_subscriber_group"></a> [subscriber\_group](#input\_subscriber\_group) | Group of subscriber things | `string` | `"subscriber-app-group"` | no |

## Outputs

No outputs.
