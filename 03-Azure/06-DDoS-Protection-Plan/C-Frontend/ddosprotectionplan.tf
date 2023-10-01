module "axa_ddosprotectionplan" {
  source                  = "../B-Backend/"  # Path to your module directory

  name                    = var.name
  resource_group_name     = var.resource_group_name
  location                = var.location
}