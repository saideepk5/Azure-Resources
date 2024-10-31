output "network_name" {
  value = azurerm_virtual_network.network.name
}

output "network_id" {
  value = azurerm_virtual_network.network.id
}

output "subnet_ids" {
  value       = { for subnet in azurerm_subnet.subnet : subnet.name => subnet.id }
}

output "subnet_names" {
  value       = { for subnet in azurerm_subnet.subnet : subnet.name => subnet.name }
}

output "subnet_address_prefixes" {
  value       = { for subnet in azurerm_subnet.subnet : subnet.name => subnet.address_prefixes }
}