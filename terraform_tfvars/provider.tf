terraform {
  required_providers {
    azurerm = {
      version = "5.0.1"
      source  = "hashicorp/azurerm"

    }
  }
}
provider "azurerm" {
  features {
  }
}