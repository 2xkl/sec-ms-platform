resource "azurerm_key_vault" "akv" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  purge_protection_enabled    = true
  soft_delete_retention_days  = 7

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.admin_object_id

    secret_permissions = ["get", "list", "set", "delete"]
    key_permissions    = ["get", "list"]
    certificate_permissions = ["get", "list"]
  }

  tags = var.tags
}