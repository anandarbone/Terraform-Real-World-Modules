variable "display_name" {
  type        = string
  description = "The name of the aad group."
}

variable "owners" {
  type        = list(string)
  description = "The name of the owner of the group."
}

variable "security_enabled"  {
  type = bool
  description = "Is the AAD group type Security or M365."
}

variable "prevent_duplicate_names"  {
  type = bool
  description = "Prevent Duplicate Name in Directory Service."
}

variable "user_principal_name" {
  type        = string
  description = "The name of the user."
}




