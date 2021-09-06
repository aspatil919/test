resource "azurerm_data_lake_store" "data_lake" {
name = var.var_data_lakename
resource_group_name =azurerm_resource_group.RG.name
location = var.var_location

}