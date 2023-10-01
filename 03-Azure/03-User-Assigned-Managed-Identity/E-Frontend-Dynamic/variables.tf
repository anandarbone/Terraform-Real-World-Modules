variable "umid_names" {
  type        = list(string)
  description = "The name of user assigned managed identity."
}

variable "rg_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The region where the resource will be deployed."
}