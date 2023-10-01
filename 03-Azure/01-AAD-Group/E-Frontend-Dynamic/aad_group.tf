module "axa_aad_groups" {
  source                  = "../D-Backend-Dynamic/"  # Path to your module directory

  display_names           = var.display_names
  owners                  = var.owners
  security_enabled        = var.security_enabled
  prevent_duplicate_names = var.prevent_duplicate_names
  user_principal_names    = var.user_principal_names
}