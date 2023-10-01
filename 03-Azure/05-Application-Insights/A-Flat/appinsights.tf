terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

resource "azurerm_application_insights" "axa_appinsights" {
  name                = "axa-az-appinsights"
  location            = "West Europe"
  resource_group_name = "axa-az-rg"
  application_type    = "web"
}

