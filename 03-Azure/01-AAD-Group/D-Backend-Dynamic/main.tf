# Create Azure AD Security Group and Add an Onwer to the Group:-
resource "azuread_group" "axa_aadgroup" {
  count                     = length(var.display_names)
  display_name              = var.display_names[count.index] 
  owners                    = var.owners 
  security_enabled          = var.security_enabled
  prevent_duplicate_names   = var.prevent_duplicate_names
}

# Terraform Data Resources for Existing AAD Users:-
data "azuread_user" "axa_aaduser" {
  count                     = length(var.user_principal_names)
  user_principal_name       = var.user_principal_names[count.index]
}

# Add Existing Azure AD User to the Group:-
resource "azuread_group_member" "axa_aadgroupmember" {
  count                     = length(azuread_group.axa_aadgroup.*.id)
  group_object_id           = azuread_group.axa_aadgroup[count.index].id
  member_object_id          = data.azuread_user.axa_aaduser[count.index].object_id
}