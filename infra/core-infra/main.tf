provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.37.0"
    }
  }

  backend "azurerm" {}
}

module "rg" {
  source   = "../tf-modules/resource-group"
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = var.environment
  }
}

module "aks" {
  source              = "../tf-modules/aks"
  name                = var.aks_cluster_name
  location            = module.rg.location
  resource_group_name = module.rg.name
  node_count          = var.aks_node_count
  vm_size             = var.aks_node_vm_size

  tags = {
    environment = var.environment
  }
}

module "acr" {
  source              = "../tf-modules/acr"
  name                = var.acr_name
  resource_group_name = module.rg.name
  location            = module.rg.location
  sku                 = "Standard"
  admin_enabled       = true

  tags = {
    environment = var.environment
  }
}

# module "keyvault" {
#   source              = "../tf-modules/keyvault"
#   name                = var.kv_name
#   location            = var.location
#   resource_group_name = module.rg.name
#   tenant_id           = var.tenant_id
#   admin_object_id     = var.admin_object_id

#   tags = {
#     environment = var.environment
#   }
# }
