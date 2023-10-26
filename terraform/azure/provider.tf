terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.77.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "fishinho"
    storage_account_name = "fishinho64gb"
    container_name       = "fishinhocontain"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  alias                      = "cloud"
}