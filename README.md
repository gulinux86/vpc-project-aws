# vpc-project
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.khomp_ngw_elastic_ip_1a](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/eip) | resource |
| [aws_instance.khom_instance](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/instance) | resource |
| [aws_internet_gateway.khomp-igw](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.khomp_ngw_public_1a](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.khomp_private_route_table](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/route_table) | resource |
| [aws_route_table.khomp_public_route_table](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/route_table) | resource |
| [aws_route_table_association.khomp_private_association_1a](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.khomp_public_association_1a](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/route_table_association) | resource |
| [aws_security_group.khomp_security_group](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/security_group) | resource |
| [aws_subnet.khomp_private_1a](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/subnet) | resource |
| [aws_subnet.khomp_public_1a](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/subnet) | resource |
| [aws_vpc.khomp_test_vpc](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/resources/vpc) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/5.15.0/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDER block to be used for the VPC | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The id of the machine image (AMI) to use for the server. | `string` | `"ami-0277155c3f0ab2930"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to name the resouces (Name tag) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region to create the resources | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_private_1a"></a> [subnet\_private\_1a](#output\_subnet\_private\_1a) | n/a |
| <a name="output_subnet_publica_1a"></a> [subnet\_publica\_1a](#output\_subnet\_publica\_1a) | n/a |
<!-- END_TF_DOCS -->