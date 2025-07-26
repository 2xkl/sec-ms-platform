variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "admin_object_id" {
  description = "Azure AD Object ID of the admin (can be SP or user)"
  type        = string
}

variable "sku_name" {
  type    = string
  default = "standard"
}

variable "tags" {
  type    = map(string)
  default = {}
}
