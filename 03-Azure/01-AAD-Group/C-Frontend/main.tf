terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.41.0" 
    }
    null = {
      version = "~> 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}