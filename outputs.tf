
output "aws_vpc_arn" {
  description = "arn of the vpc"
  value       = var.cloud == "aws" ? module.vpc.vpc_arn : null
}

output "aws_vpc_id" {
  description = "ID of the vpc"
  value       = var.cloud == "aws" ? module.vpc.vpc_id : null
}

output "aws_vpc_cidr_block" {
  description = "CIDR block of the vpc"
  value       = var.cloud == "aws" ? module.vpc.vpc_cidr_block : null
}

output "aws_azs" {
  description = "list of azs of the network"
  value       = var.cloud == "aws" ? toset(local.azs) : null
}

output "aws_intra_subnet_arns" {
  description = "arn of the intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.intra_subnet_arns) : null
}

output "aws_intra_subnet_ids" {
  description = "IDs of the intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.intra_subnets) : null
}

output "aws_intra_subnets_cidr_blocks" {
  description = "List of cidr_blocks of intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.intra_subnets_cidr_blocks) : null
}

output "aws_intra_route_table_ids" {
  description = "ids of the route tables from intra subnet"
  value       = var.cloud == "aws" ? toset(module.vpc.intra_route_table_ids) : null
}

output "aws_public_subnet_arns" {
  description = "arn of the intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.public_subnet_arns) : null
}

output "aws_public_subnet_ids" {
  description = "IDs of the intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.public_subnets) : null
}

output "aws_public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.public_subnets_cidr_blocks) : null
}

output "aws_public_route_table_ids" {
  description = "ids of the route tables from public subnet"
  value       = var.cloud == "aws" ? toset(module.vpc.public_route_table_ids) : null
}

output "aws_private_subnet_arns" {
  description = "arn of the intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.private_subnet_arns) : null
}

output "aws_private_subnet_ids" {
  description = "IDs of the intra subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.private_subnets) : null
}

output "aws_private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = var.cloud == "aws" ? toset(module.vpc.private_subnets_cidr_blocks) : null
}

output "aws_private_route_table_ids" {
  description = "ids of the route tables from private subnet"
  value       = var.cloud == "aws" ? toset(module.vpc.private_route_table_ids) : null
}

output "aws_nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = var.cloud == "aws" ? toset(module.vpc.nat_public_ips) : null
}


output "full_cluster_name" {
  description = "Name of cluster tagged to subnets"
  value       = local.full_cluster_name
}
