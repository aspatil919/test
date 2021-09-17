resource "azurerm_data_factory" "data_factory"{
name = var.var_data_factoryname
location = var.var_location
resource_group_name = azurerm_resource_group.RG.name
}
