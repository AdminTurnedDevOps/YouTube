terraform {
  backend "azurerm" {
    resource_group_name  = "srecourse-rg"
    storage_account_name = "srecourse92sg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
# A features block as defined below which can be used to customize the behaviour of certain Azure Provider resources.
features {}
}

resource "azurerm_resource_group" "srecourse-rg" {
    name = var.name
    location = var.location
}

output "name" {
  value = var.name
}

output "location" {
  value = var.location
}