resource "azurerm_application_insights" "axa_appinsights" {
  name                = var.name #"axa-az-appinsights"
  location            = var.location #"West Europe"
  resource_group_name = var.resource_group_name #"axa-az-rg"
  application_type    = var.application_type #"web"
}

