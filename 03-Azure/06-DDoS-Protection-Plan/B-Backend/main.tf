resource "azurerm_network_ddos_protection_plan" "axa_ddosprotectionplan" {
  name                = var.name #"axa-az-ddosprotectionplan"
  location            = var.location #"West Europe"
  resource_group_name = var.resource_group_name #"axa-az-rg"
}