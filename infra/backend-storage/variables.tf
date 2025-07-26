variable "resource_group_name" {
    type = string
    default = "devops-test-sec2-rg"
}

variable "location" {
    type = string
    default = "westeurope"
}

variable "storage_account_name" {
    type = string
    default = "devopsjlk2132"
}

variable "container_name" {
    type = string
    default = "tfstate"
}

variable "key_vault_name" {
    type = string
    default = "strangekvtest2"
}

variable "tenant_id" {
    type = string
}

variable "service_connection_object_id" {
    type = string
}