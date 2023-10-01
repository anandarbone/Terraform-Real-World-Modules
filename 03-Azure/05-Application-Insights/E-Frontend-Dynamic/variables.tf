variable "app_insights_names" {
  type        = list(string)
  description = "The name of applicatoin insights"
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