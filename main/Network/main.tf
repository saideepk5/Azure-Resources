# data "azurerm_resource_group" "resource_group" {
#     name = var.resource_group_name  
# }

module "vnet" {
    source = "../../modules/Network"
    network_name = var.network_name
    network_location = var.network_location
    address_space      = var.address_space
    //resource_group_name = data.azurerm_resource_group.resource_group.name
    resource_group_name = var.resource_group_name
    subnets = var.subnets
}