output "axa_aadgroup_id" {
  value = azuread_group.axa_aadgroup.*.id
}