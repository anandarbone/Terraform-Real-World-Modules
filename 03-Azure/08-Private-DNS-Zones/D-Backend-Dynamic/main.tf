resource "azurerm_private_dns_zone" "axa_privatednszone" {
  count				         = length(var.names)
  name                 = var.names[count.index]
  resource_group_name  = var.rg-name
}
