provider "azurerm" {
  features {}
}

module "rg" {
  source = "../tf-modules/resource-group"

  name     = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source = "../tf-modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = module.azurerm_resource_group.rg.name
  location             = module.azurerm_resource_group.rg.location
}

module "storage_container" {
  source = "../tf-modules/storage-account-container"

  container_name        = var.container_name
  storage_account_id    = module.storage_account.id
  container_access_type = "private"
}

module "keyvault" {
  source = "../tf-modules/keyvault"

  name                = var.key_vault_name
  location            = var.location
  resource_group_name = module.rg.name
  tenant_id           = var.tenant_id
  admin_object_id     = var.service_connection_object_id

}

module "kv_access_policy" {
  source = "../tf-modules/keyvault-access-policy"

  key_vault_id       = module.azurerm_key_vault.kv.id
  tenant_id          = var.tenant_id
  object_id          = var.service_connection_object_id
  secret_permissions = ["Get", "List"]
}
