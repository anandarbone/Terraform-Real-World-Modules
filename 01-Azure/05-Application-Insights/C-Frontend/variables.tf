variable "app_insights_name" {
  type        = string
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

variable "application_type" {
  type        = string
  description = ""
}