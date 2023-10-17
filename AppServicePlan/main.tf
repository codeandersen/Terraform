provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "TEST-APPSERVICE"
  location = "West Europe"
}

resource "azurerm_service_plan" "example" {
  name                = "TEST-APPSERVICE-PLAN"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}