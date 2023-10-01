variable "loga_names" {
  type        = list(string)
  description = "The name of log analytics workspace."
}

variable "rg_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The region where the resource will be deployed."
}

variable "sku" {
  type        = string
  description = "The sku of log analytics workspace."
}

variable "retention_in_days" {
  type        = number
  description = "The retention period of log analytics workspace."
}