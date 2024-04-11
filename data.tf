data "azurerm_resource_group" "aks_rg" {
  name = var.existing_resource_group_name
}

data "azurerm_resource_group" "existing-vnet-rg" {
  name = var.existing_vnet_resource_group_name
}

data "azurerm_virtual_network" "existing-vnet" {
  name                = var.azurerm_virtual_network_name
  resource_group_name = data.azurerm_resource_group.existing-vnet-rg.name
}

data "azurerm_subnet" "existing-subnet" {
  name                 = var.azurerm_subnet_name
  virtual_network_name = data.azurerm_virtual_network.existing-vnet.name
  resource_group_name  = data.azurerm_resource_group.existing-vnet-rg.name
}