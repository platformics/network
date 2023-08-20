<!-- BEGIN_TF_DOCS -->

# VPC Production

Create a network to be used by cluster and create a cluster name to be consumed for other projects.

Create a folder network/region_name/environment. (optional)

Example main.tf
```
terraform {
required_providers {
aws = {
source  = "hashicorp/aws"
version = "~> 5.0"
}
}

required_version = "~> 1.5"
}

provider "aws" {
region = "us-west-2"
}

module "network" {
source = "git::https://github.com/platformics/network.git"
cloud  = "aws"
region = "us-west-2"
}
```

## Create Documentation

To create a documentation please write the descripton in .terraform-docs.yaml at Header block.

Install [terraform-docs](https://github.com/terraform-docs/terraform-docs/) and run

```bash
terraform-docs -c .terraform-docs.yaml .
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vcp_num_representation"></a> [vcp\_num\_representation](#module\_vcp\_num\_representation) | git::https://github.com/platformics/vpc-num-representation.git | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud"></a> [cloud](#input\_cloud) | Cloud name | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name | `string` | `"cluster"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment is the prefix to cluster name | `string` | `"production"` | no |
| <a name="input_network_num"></a> [network\_num](#input\_network\_num) | Network number on the region. Number from 0 to 9 | `number` | `0` | no |
| <a name="input_region"></a> [region](#input\_region) | Region used by cloud | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_azs"></a> [aws\_azs](#output\_aws\_azs) | list of azs of the network |
| <a name="output_aws_intra_route_table_ids"></a> [aws\_intra\_route\_table\_ids](#output\_aws\_intra\_route\_table\_ids) | ids of the route tables from intra subnet |
| <a name="output_aws_intra_subnet_arns"></a> [aws\_intra\_subnet\_arns](#output\_aws\_intra\_subnet\_arns) | arn of the intra subnets |
| <a name="output_aws_intra_subnet_ids"></a> [aws\_intra\_subnet\_ids](#output\_aws\_intra\_subnet\_ids) | IDs of the intra subnets |
| <a name="output_aws_intra_subnets_cidr_blocks"></a> [aws\_intra\_subnets\_cidr\_blocks](#output\_aws\_intra\_subnets\_cidr\_blocks) | List of cidr\_blocks of intra subnets |
| <a name="output_aws_nat_public_ips"></a> [aws\_nat\_public\_ips](#output\_aws\_nat\_public\_ips) | List of public Elastic IPs created for AWS NAT Gateway |
| <a name="output_aws_private_route_table_ids"></a> [aws\_private\_route\_table\_ids](#output\_aws\_private\_route\_table\_ids) | ids of the route tables from private subnet |
| <a name="output_aws_private_subnet_arns"></a> [aws\_private\_subnet\_arns](#output\_aws\_private\_subnet\_arns) | arn of the intra subnets |
| <a name="output_aws_private_subnet_ids"></a> [aws\_private\_subnet\_ids](#output\_aws\_private\_subnet\_ids) | IDs of the intra subnets |
| <a name="output_aws_private_subnets_cidr_blocks"></a> [aws\_private\_subnets\_cidr\_blocks](#output\_aws\_private\_subnets\_cidr\_blocks) | List of cidr\_blocks of private subnets |
| <a name="output_aws_public_route_table_ids"></a> [aws\_public\_route\_table\_ids](#output\_aws\_public\_route\_table\_ids) | ids of the route tables from public subnet |
| <a name="output_aws_public_subnet_arns"></a> [aws\_public\_subnet\_arns](#output\_aws\_public\_subnet\_arns) | arn of the intra subnets |
| <a name="output_aws_public_subnet_ids"></a> [aws\_public\_subnet\_ids](#output\_aws\_public\_subnet\_ids) | IDs of the intra subnets |
| <a name="output_aws_public_subnets_cidr_blocks"></a> [aws\_public\_subnets\_cidr\_blocks](#output\_aws\_public\_subnets\_cidr\_blocks) | List of cidr\_blocks of public subnets |
| <a name="output_aws_vpc_arn"></a> [aws\_vpc\_arn](#output\_aws\_vpc\_arn) | arn of the vpc |
| <a name="output_aws_vpc_cidr_block"></a> [aws\_vpc\_cidr\_block](#output\_aws\_vpc\_cidr\_block) | CIDR block of the vpc |
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | ID of the vpc |
| <a name="output_full_cluster_name"></a> [full\_cluster\_name](#output\_full\_cluster\_name) | Name of cluster tagged to subnets |



## Copyright (c) 2023 Platformics, Inc.

The right to copy, distribute, modify, or otherwise make use of this software may be licensed only pursuant to the terms of an applicable Platformics license agreement.
<!-- END_TF_DOCS -->