terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
    }
  }

    backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstate"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
    }
  }


provider "azurerm" {
  features {}
}