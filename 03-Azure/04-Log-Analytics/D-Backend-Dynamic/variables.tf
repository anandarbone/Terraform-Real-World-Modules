variable "names" {
  type        = list(string)
  description = "The names of log analytics workspace."
}

variable "resource_group_name" {
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
  type        = string
  description = "The retention period of log analytics workspace."
}









