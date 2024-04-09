variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "existing_resource_group_name" {
  type        = string
  description = "Name of the existing resource group"
}

variable "existing_vnet_resource_group_name" {
  type        = string
  description = "Name of the existing RG for vnet"
}

variable "azurerm_virtual_network_name" {
  type        = string
  description = "Name of the existing vnet"
}

variable "azurerm_subnet_name" {
  type        = string
  description = "Name of the existing subnet"
}

variable "aks_location" {
  type        = string
  description = "Location to deploy the AKS"
}

variable "aks_cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "azure_policy_enabled" {
  type        = bool
  description = "Azure Policy"
}

variable "sku_tier" {
  type        = string
  description = "Azure SKU tier"
}

variable "role_based_access_control_enabled" {
  type        = bool
  description = "Azure RBAC"
}

variable "kubernetes_version" {
  type        = string
  description = "K8s version"
}

variable "system_node_pool_name" {
  type        = string
  description = "Name of system nodepool"
}

variable "system_node_pool_nodecount" {
  type        = string
  description = "Count of system nodepool nodes"
}

variable "system_node_pool_vmsize" {
  type        = string
  description = "Size of system nodepool nodes"
}

variable "default_node_pool_enable_autosclaing" {
  type        = bool
  description = "Size of system nodepool nodes"
}

variable "system_node_pool_podcount" {
  type        = string
  description = "Count of system nodepool pods"
}

variable "node_os_sku" {
  type        = string
  description = "Count of system nodepool pods"
}

variable "node_disk_size" {
  type        = string
  description = "Disk size of system nodes"
}

variable "network_plugin" {
  type        = string
  description = "Network configuration"
}

variable "network_policy" {
  type        = string
  description = "Network Policy"
}

variable "load_balancer_sku" {
  type        = string
  description = "Load Balancer SKU"
}

variable "service_cidr_range" {
  type        = string
  description = "Service_cidr_range"
}

variable "pod_cidr_range" {
  type        = string
  description = "Pod_cidr_range"
}

variable "dns_service_ip" {
  type        = string
  description = "Dns servie IP"
}








