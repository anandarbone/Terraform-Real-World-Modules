module "axa_umid" {
  source                  = "../D-Backend-Dynamic/"  # Path to your module directory

  names                   = var.umid_names
  resource_group_name     = var.rg_name
  location                = var.location
}