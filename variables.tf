variable "subscription_id" {
  type        = string
  description = "Subscription id for the account"
}

variable "tenant_id" {
  type        = string
  description = "Tenant id for the account"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the existing resource group."
}

variable "location" {
  type        = string
  description = "Resources location in Azure"
}

variable "cluster_name" {
  type        = string
  description = "AKS cluster name"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}

variable "dns_prefix_name" {
  type        = string
  description = "DNS prefix name for cluster"  
}
