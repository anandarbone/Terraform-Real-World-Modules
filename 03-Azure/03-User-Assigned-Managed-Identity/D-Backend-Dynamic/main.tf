resource "azurerm_user_assigned_identity" "axa_umid" {
  count               = length(var.names)
  name                = var.names[count.index]
  resource_group_name = var.resource_group_name
  location            = var.location 
  }