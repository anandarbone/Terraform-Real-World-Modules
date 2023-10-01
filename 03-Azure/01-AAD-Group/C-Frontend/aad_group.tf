module "axa_aad_groups" {
  source                  = "../B-Backend/"  # Path to your module directory

  display_name            = var.display_name
  owners                  = var.owners
  security_enabled        = var.security_enabled
  prevent_duplicate_names = var.prevent_duplicate_names
  user_principal_name     = var.user_principal_name
}