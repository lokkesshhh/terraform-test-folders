# output "resourcegroup" {
#   description = "name of the resource group"
#   value       = azurerm_resource_group.azrm[*].id
# }

# output "virtual_network_name" {
#   description = "value of the virtual network attributes"
#   # value = azurerm_virtual_network.vmnetwork[*].address_space
#   # sensitive = true
#   value = [for address in azurerm_virtual_network.vmnetwork : address.address_space]


# }
# # output "subnet" {
# #   description = "checking subnet values for each env"
# #   value       = { for env, j in azurerm_subnet.sn1 : "${env} environment" => j.name }

# # }

# # data "azurerm_subscription" "current" {

# # }

# # data "azurerm_active_directory_domain_service" "current" {

# # }
# # output "my_current_subscription" {
# # description = "Name of the current subscription"
# # value = data.azurerm_active_directory_domain_service.current.name

# # }