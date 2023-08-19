# Terraform Provider for Azure AD:-
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.41.0" 
    }
  }
}

# Create Azure AD Security Group and Add an Onwer to the Group:-
resource "azuread_group" "axa_aadgroup" {
  display_name              = "axa-aad-group-01"
  owners                    = "axa-admin@mitra008.onmicrosoft.com"
  security_enabled          = true
  prevent_duplicate_names   = true
}

# Terraform Data Resources for Existing AAD Users:-
data "azuread_user" "axa_aaduser" {
  user_principal_name = "axa-user01@mitra008.onmicrosoft.com"
}

# Add Existing Azure AD User to the Group:-
resource "azuread_group_member" "axa_aadgroupmember" {
  group_object_id  = azuread_group.axa_aadgroup.id
  member_object_id = data.azuread_user.axa_aaduser.id
}


