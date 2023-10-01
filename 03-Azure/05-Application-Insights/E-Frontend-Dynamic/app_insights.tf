module "axa_appinsights" {
  source                  = "../D-Backend-Dynamic/"  # Path to your module directory

  names                   = var.app_insights_names
  resource_group_name     = var.rg_name
  location                = var.location
  application_type        = var.application_type
}