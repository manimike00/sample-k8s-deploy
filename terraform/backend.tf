terraform {
  backend "azurerm" {
    resource_group_name  = "mani-poc"
    storage_account_name = "tfstate15505"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}