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

resource "azurerm_log_analytics_workspace" "axa_loga" {
  name                = "axa-az-loga-01"
  location            = "West Europe"
  resource_group_name = "axa-az-rg-01"
  sku                 = "PerGB2018"
  retention_in_days   = 30
  }