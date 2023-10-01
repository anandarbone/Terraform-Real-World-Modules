output "axa_umid_ids" {
  value = azurerm_user_assigned_identity.axa_umid.*.id
}