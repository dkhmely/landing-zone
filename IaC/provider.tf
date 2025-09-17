terraform {
  required_providers {
    azurerm = {
      version = "=4.41.0"
      source  = "hashicorp/azurerm"
    }
    azuread = {
      version = "=3.5.0"
      source  = "hashicorp/azuread"
    }
  }
  backend "azurerm" {
  }

}

provider "azurerm" {
  features {}
}