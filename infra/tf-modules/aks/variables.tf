variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "node_count" {
  default = 2
}
variable "vm_size" {
  default = "Standard_DS2_v2"
}
variable "tags" {
  type    = map(string)
  default = {}
}