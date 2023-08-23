module "axa_rg" {
  source                  = "../B-Backend/"  # Path to your module directory

  name     = var.rg_name
  location = var.location
}