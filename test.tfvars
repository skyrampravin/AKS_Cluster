subscription_id                      = "((Subscription ID))"
tenant_id                            = "((Tenant ID))"
client_id                            = "((Client ID))"
client_secret                        = "((Client secret))"
existing_resource_group_name         = "((Resource group name))"
existing_vnet_resource_group_name    = "((Resource group name of vnet))"
azurerm_virtual_network_name         = "((Vnet name))"
azurerm_subnet_name                  = "((Subnet name))"
aks_location                         = "France Central"
aks_cluster_name                     = "((Cluster name))"
azure_policy_enabled                 = "true"
sku_tier                             = "Free"
role_based_access_control_enabled    = "true"
kubernetes_version                   = "1.28.5"
system_node_pool_name                = "systemnp1"
system_node_pool_nodecount           = "1"
system_node_pool_vmsize              = "((VM size))"
default_node_pool_enable_autosclaing = "false"
system_node_pool_podcount            = "30"
node_os_sku                          = "Ubuntu"
node_disk_size                       = "128"
network_plugin                       = "((Network configuration))"
network_policy                       = "calico"
load_balancer_sku                    = "standard"
service_cidr_range                   = "10.0.0.0/24"
pod_cidr_range                       = "100.64.80.0/20"
dns_service_ip                       = "10.0.0.10"
#docker_bridge_cidr_range             = "172.17.0.1/20"
