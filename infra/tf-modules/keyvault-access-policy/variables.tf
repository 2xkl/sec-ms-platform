variable "key_vault_id" {
  type        = string
  description = "The ID of the Key Vault."
}

variable "tenant_id" {
  type        = string
  description = "The Tenant ID for the access policy."
}

variable "object_id" {
  type        = string
  description = "The Object ID (user, group, service principal)."
}

variable "secret_permissions" {
  type        = list(string)
  description = "List of secret permissions."
}