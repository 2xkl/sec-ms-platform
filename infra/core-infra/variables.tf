variable "resource_group_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "aks_cluster_name" {
  type = string
}

variable "aks_node_count" {
  default = 2
}

variable "aks_node_vm_size" {
  default = "Standard_DS2_v2"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "kv_name" {
  description = "Key Vault name"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "admin_object_id" {
  description = "Object ID of the admin (User, SP, or Managed Identity)"
  type        = string
}