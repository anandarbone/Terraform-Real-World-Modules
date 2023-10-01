module "axa_umid" {
  source                  = "../B-Backend/"  # Path to your module directory

  name                    = var.umid_name
  resource_group_name     = var.rg_name
  location                = var.location
}