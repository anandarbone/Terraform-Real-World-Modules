resource "azurerm_user_assigned_identity" "axa_umid" {
  name                = var.name #"axa-az-umid"
  resource_group_name = var.resource_group_name #"axa-az-rg"
  location            = var.location #"West Europe"
}