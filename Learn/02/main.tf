#Depends on example
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
  name     = "prod-vnet-rg-02"
  location = "West Europe"
}

resource "azurerm_resource_group" "example1" {
  name     = "prod-vnet-rg-03"
  location = "West Europe"
  depends_on = [ azurerm_resource_group.example ]
}

