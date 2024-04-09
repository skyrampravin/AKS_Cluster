resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                              = var.aks_cluster_name
  location                          = var.aks_location
  resource_group_name               = data.azurerm_resource_group.aks_rg.name
  dns_prefix                        = "${var.aks_cluster_name}-dns"
  azure_policy_enabled              = var.azure_policy_enabled
  sku_tier                          = var.sku_tier
  role_based_access_control_enabled = var.role_based_access_control_enabled
  kubernetes_version                = var.kubernetes_version

  default_node_pool {
    name                = var.system_node_pool_name
    node_count          = var.system_node_pool_nodecount
    vm_size             = var.system_node_pool_vmsize
    enable_auto_scaling = var.default_node_pool_enable_autosclaing
    max_pods            = var.system_node_pool_podcount
    os_sku              = var.node_os_sku
    os_disk_size_gb     = var.node_disk_size
    vnet_subnet_id      = data.azurerm_subnet.existing-subnet.id
  }

  network_profile {
    network_plugin = var.network_plugin
    network_policy = var.network_policy

    load_balancer_sku = var.load_balancer_sku
    service_cidr      = var.service_cidr_range
    dns_service_ip    = var.dns_service_ip
    pod_cidr          = var.pod_cidr_range

  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}

#resource "azurerm_kubernetes_cluster_node_pool" "nodepool1" {
#  name                = "nodepool1"
#  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_test_cluster_05.id
#  vm_size             = "Standard_B2s_v2"
#  node_count          = 1
#  enable_auto_scaling = true
#  max_count           = 30
#  os_sku = "ubuntu"
#}

#resource "azurerm_kubernetes_cluster_node_pool" "k8s-worker" {
#  for_each = var.nodepools

#  name                  = each.value.name
#  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_test_cluster_05.id
#  vm_size               = each.value.vm_size
#  min_count             = each.value.min_count # Minimum nodes: 2
#  max_count             = each.value.max_count # Maximum nodes: 5
#  max_pods              = 40 # Minimum pods: 40
#  enable_auto_scaling   = each.value.enable_auto_scaling
#  enable_node_public_ip = each.value.enable_node_public_ip
#  zones                 = each.value.zones
#  vnet_subnet_id        = var.az_subnet_id
#  os_sku = "ubuntu"
#  tags                  = each.value.tags
#  os_disk_size_gb = 30
#}