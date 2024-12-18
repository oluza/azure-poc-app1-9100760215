resource "azurerm_container_group" "aci" {
  name                = "${var.app_name}-app-container"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"

  container {
    name   = "app"
    image  = "${azurerm_container_registry.acr.login_server}/lfinterview:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port = 80
    }
  }

  identity {
    type = "UserAssigned"
    identity_ids = [
      azurerm_user_assigned_identity.user_id.id
    ]
  }

}