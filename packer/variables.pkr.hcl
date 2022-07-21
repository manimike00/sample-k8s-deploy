variable "managed_image_name" {}
variable "client_id" {}
variable "client_secret" {}
#variable "location" {
#  location = "centralindia"
#}
variable "resource_group" {
  default = "mani-poc"
}
variable "subscription_id" {}
variable "tenant_id" {}
variable "vm_size" {
  default = "Standard_B1ls"
}
