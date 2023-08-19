variable "names" {
  type        = list(string)
  description = "The names of Application Insights."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The region where the resource will be deployed."
}

variable "application_type" {
  type        = string
  description = "The application type of application insights."
}











