# data "azurerm_resource_group" "data_rg" {
#   depends_on = [ azurerm_resource_group.azrm]
#    name = local.rg_name

# }

# data "azurerm_virtual_network" "vn" {
#   count               = length(azurerm_virtual_network.vmnetwork)
#   name                = azurerm_virtual_network.vmnetwork[count.index].name
#   resource_group_name = azurerm_virtual_network.vmnetwork[count.index].resource_group_name

# }
# output "res_name" {
#   description = "from datasource name of resource group"
#   value       = data.azurerm_resource_group.data_rg.name
# }

# output "res_location" {

#   description = "location of resource gorup"
#   value       = data.azurerm_resource_group.data_rg.location
# }
# output "res_id" {

#     description = "resource group ID"
#     value = data.azurerm_resource_group.data_rg.id

# }


# output "vn_network" {

#   description = "virtual network details"
#   value       = data.azurerm_virtual_network.vn[*].name

# }
data "azurerm_resource_group" "rg_grp" {

  name = "ResourceMoverRG-eastus-centralus-eus2"

}


data "azurerm_subscription" "sub" {


}

output "current_subscription_display_name" {
  value = data.azurerm_subscription.sub.display_name
}

output "current_location_placement_id" {
  value = data.azurerm_subscription.sub.location_placement_id
}

output "resource_group_exisiting_in_azure_location" {

  value = data.azurerm_resource_group.rg_grp.location

}

output "resource_group_exisiting_in_azure_id" {

  value = data.azurerm_resource_group.rg_grp.id

}
