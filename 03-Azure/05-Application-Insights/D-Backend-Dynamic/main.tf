resource "azurerm_application_insights" "axa_appinsights" {
  count               = length(var.names)
  name                = var.names[count.index] 
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
}

