terraform {
  backend "azurerm" {
    resource_group_name  = "backend_rg"
    storage_account_name = "backendstoragevipin123"
    container_name       = "tfstate"
    key                  = "barkha.tfstate"

  }
}