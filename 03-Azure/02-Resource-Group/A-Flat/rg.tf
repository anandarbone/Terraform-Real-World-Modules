terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

resource "azurerm_resource_group" "axa_rg" {
  name     = "axa-az-rg"
  location = "West Europe"
}