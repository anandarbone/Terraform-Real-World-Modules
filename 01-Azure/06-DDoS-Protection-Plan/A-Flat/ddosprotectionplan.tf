terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

resource "azurerm_network_ddos_protection_plan" "axa_ddosprotectionplan" {
  name                = "axa-az-ddosprotectionplan"
  location            = "West Europe"
  resource_group_name = "axa-az-rg"
}

