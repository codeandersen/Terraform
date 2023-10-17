terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" # Will install Azure RM providor
      version = "=3.0.0"
    }
  }
}

## configuring the azure providor
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "prod-vnet-rg-01"
  location = "West Europe"
}


resource "azurerm_virtual_network" "example" {
  name                = "prod-vnet-0001"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  tags = {
    environment = "Production"
  }
}