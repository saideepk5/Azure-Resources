resource "azurerm_virtual_network" "network" {
  name                = var.network_name
  location            = var.network_location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = var.tags
}



resource "azurerm_subnet" "subnet" {
  for_each = { for subnet in var.subnets : subnet.name => subnet}
  name = each.value.name
  address_prefixes = each.value.address_prefixes
  virtual_network_name = azurerm_virtual_network.network.name
  resource_group_name = var.resource_group_name

  depends_on = [ azurerm_virtual_network.network ]
}