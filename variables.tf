variable "cloud" {
  description = "Cloud name"
  type        = string
}

variable "region" {
  description = "Region used by cloud"
  type        = string
}

variable "network_num" {
  description = "Network number on the region. Number from 0 to 9"
  type        = number
  default     = 0
}



variable "environment" {
  description = "Environment is the prefix to cluster name"
  type        = string
  default     = "production"
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
  default     = "cluster"
}
