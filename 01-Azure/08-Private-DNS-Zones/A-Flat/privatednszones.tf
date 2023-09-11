terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

resource "azurerm_private_dns_zone" "axa_privatednszone" {
  name                 = "privatelink.database.windows.net"
  resource_group_name  = "axa-az-rg"
}




