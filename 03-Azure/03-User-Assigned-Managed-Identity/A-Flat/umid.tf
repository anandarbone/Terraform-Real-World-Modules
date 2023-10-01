terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

#Shared Service Resource Groups
resource "azurerm_user_assigned_identity" "axa_umid" {
  name                = "axa-az-umid"
  resource_group_name = "axa-az-rg"
  location            = "West Europe"
}