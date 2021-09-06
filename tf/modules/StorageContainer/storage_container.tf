
resource "azurerm_storage_container" "storage_container" {
  name                  = var.var_storage_containername
  storage_account_name  = azurerm_storage_account.STG.name
  container_access_type = "private"
}