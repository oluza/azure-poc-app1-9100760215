resource "random_string" "salt" {
  length  = 7
  special = false
}

resource "azurerm_container_registry" "acr" {
  name                = "lfapprepo"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}