terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f209c6b0-5f30-4365-945a-1e776121ebfe"
}