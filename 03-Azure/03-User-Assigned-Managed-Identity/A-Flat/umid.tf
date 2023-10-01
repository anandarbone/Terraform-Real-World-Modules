terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}


resource "azurerm_user_assigned_identity" "axa_umid" {
  name                = "axa-az-umid-01"
  resource_group_name = "axa-az-rg-01"
  location            = "West Europe"
}