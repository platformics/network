module "vcp_num_representation" {
  source = "git::https://github.com/platformics/vpc-num-representation.git"
  cloud  = var.cloud
}

module "vpc" {
  count   = var.cloud == "aws" ? 1 : 0
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = var.environment
  cidr = local.vpc_cidr

  azs             = local.azs
  public_subnets  = local.public_subnet_cidrs
  private_subnets = local.private_subnet_cidrs
  intra_subnets   = local.intra_subnet_cidrs

  map_public_ip_on_launch = true

  enable_ipv6 = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  dhcp_options_domain_name         = "${var.region}.compute.internal"
  dhcp_options_domain_name_servers = ["AmazonProvidedDNS"]

  # nat gateway for external access in private (one per az)
  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                    = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}
