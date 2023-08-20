locals {

  full_cluster_name = "${var.environment}-${var.cluster_name}"
  cidr_prefix       = "10.${module.vcp_num_representation.region_number[var.region]}${var.network_num}"
  vpc_cidr          = "${local.cidr_prefix}.0.0/16"

  azs                  = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnet_cidrs = ["${local.cidr_prefix}.0.0/20", "${local.cidr_prefix}.16.0/20", "${local.cidr_prefix}.32.0/20"]
  intra_subnet_cidrs   = ["${local.cidr_prefix}.172.0/24", "${local.cidr_prefix}.173.0/24", "${local.cidr_prefix}.174.0/24"]
  public_subnet_cidrs  = ["${local.cidr_prefix}.181.0/24", "${local.cidr_prefix}.182.0/24", "${local.cidr_prefix}.183.0/24"]

  project_name = "cluster-network"

  tags = {
    Cluster          = local.full_cluster_name
    Environment      = var.environment
    System           = local.project_name
    CreationOrigin   = "terraform"
    repositoryOrigin = "https://github.com/platformics/network"
  }
}
