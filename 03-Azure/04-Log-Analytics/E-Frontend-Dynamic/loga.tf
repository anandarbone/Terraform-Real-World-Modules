module "axa_loga" {
  source                  = "../D-Backend-Dynamic/"  # Path to your module directory

  names                   = var.loga_names
  resource_group_name     = var.rg_name
  location                = var.location
  sku                     = var.sku
  retention_in_days       = var.retention_in_days
}