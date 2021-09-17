provider "azurerm" {
    version = ">=2.0"
    subscription_id = var.var_subscription_id
    client_id = var.var_client_id
    tenant_id = var.var_tenant_id
    client_secret = var.var_client_secret
    features{}
}

terraform {
    backend "azurerm" {
        resource_group_name = "DEV_RG"
        storage_account_name = "strvdev01"
        container_name = "dev01"
        key = "mainfile1.tfstate"
    }
}


module "Resourcegroup" {
 source = "./tf/module/Resourcegroup/main.tf"
 var_location = var.var_location
 var_RG_name = var.var_RG_name
}

#module "m_storage_account" {
 #source = "./tf/modules/Storageaccount"
#var_location = var.var_location
#var_storage_name = var.var_Storage_name
#var_account_tier = var.var_account_tier
#var_account_replication_type = var.var_account_replication_type  
#}

#module "m_storage_container" {
#source = "./tf/modules/StorageContainer"
 # var_storage_containername = var.var_storage_containername
  #container_access_type = "private"
#}

#module "m_data_factory"{
 #   source = "./tf/modules/DataFactory"
#var_data_factoryname = var.var_data_factoryname
#var_location = var.var_location
#resource_group_name = azurerm_resource_group.RG.name
#}

#module  "m_data_lake" {
  #  source = "./tf/modules/DataLake"
#var_data_lakename = var.var_data_lakename
# resource_group_name =azurerm_resource_group.RG.name
#location = var.var_location

#}

