terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

resource "azurerm_log_analytics_workspace" "axa_loga" {
  name                = "axa-az-loga"
  location            = "West Europe"
  resource_group_name = "axa-az-rg"
  sku                 = "PerGB2018"
  retention_in_days   = 30
  }
