resource "azurerm_resource_group" "axa_rg" {
  name     = var.name #"axa-az-rg"
  location = var.location #"West Europe"
}