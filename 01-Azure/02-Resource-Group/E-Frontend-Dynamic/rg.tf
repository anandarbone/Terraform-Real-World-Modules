module "axa_rg" {
  source                  = "../D-Backend-Dynamic/"  # Path to your module directory

  names     = var.rg_names
  location  = var.location
}