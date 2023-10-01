output "axa_umid_ids" {
  value = azurerm_resource_group.axa_umid.*.id
}