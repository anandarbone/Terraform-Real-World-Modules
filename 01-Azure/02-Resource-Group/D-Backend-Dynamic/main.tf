resource "azurerm_resource_group" "axa_rg" {
  count    = length(var.names)
  name     = var.names[count.index] 
  location = var.location 
}