output "axa_appinsights_id" {
  value = azurerm_application_insights.axa_appinsights.*.id
}