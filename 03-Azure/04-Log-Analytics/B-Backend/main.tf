resource "azurerm_log_analytics_workspace" "axa_loga" {
  name                = var.name #"axa-az-loga"
  location            = var.location #"West Europe"
  resource_group_name = var.resource_group_name #"axa-az-rg"
  sku                 = var.sku #"PerGB2018"
  retention_in_days   = var.retention_in_days #30
  }
