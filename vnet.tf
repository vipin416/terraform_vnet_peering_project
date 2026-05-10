resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_virtual_network" "vnet" {
  for_each            = local.vnet
  name                = each.key
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = each.value.address_prefix
}

resource "azurerm_subnet" "subnet" {
  for_each             = local.subnet
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet[each.value.vnet_name].name
  address_prefixes     = each.value.address_prefix

  depends_on = [
    azurerm_virtual_network.vnet
  ]
}

