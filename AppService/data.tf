data "azuread_client_config" "current" {}

data "azurerm_subscription" "current" {
    subscription_id = local.subcriptionId
}

