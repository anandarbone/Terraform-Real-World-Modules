module "axa_appinsights" {
  source                  = "../B-Backend/"  # Path to your module directory

  name                    = var.app_insights_name
  resource_group_name     = var.rg_name
  location                = var.location
  application_type        = var.application_type
}