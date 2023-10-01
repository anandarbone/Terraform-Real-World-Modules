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

resource "azurerm_application_insights" "axa_appinsights" {
  name                = "axa-az-appinsights-01"
  location            = "West Europe"
  resource_group_name = "axa-az-rg-01"
  application_type    = "web"
}

