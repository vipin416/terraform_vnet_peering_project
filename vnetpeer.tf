resource "azurerm_virtual_network_peering" "example-1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.vnet["vnet1"].name
  remote_virtual_network_id = azurerm_virtual_network.vnet["vnet2"].id

  depends_on = [
    azurerm_virtual_network.vnet
  ]

}

resource "azurerm_virtual_network_peering" "example-2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.vnet["vnet2"].name
  remote_virtual_network_id = azurerm_virtual_network.vnet["vnet1"].id

  depends_on = [
    azurerm_virtual_network.vnet
  ]
}