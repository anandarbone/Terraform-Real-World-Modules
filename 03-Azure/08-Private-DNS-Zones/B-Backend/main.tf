resource "azurerm_private_dns_zone" "axa_privatednszone" {
  name                 = var.name #"privatelink.database.windows.net"
  resource_group_name  = var.resource_group_name #"axa-az-rg"
}