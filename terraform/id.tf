resource "azurerm_user_assigned_identity" "user_id" {
  location            = azurerm_resource_group.rg.location
  name                = "devops_team"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_role_assignment" "example" {
  principal_id         = azurerm_user_assigned_identity.user_id.principal_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.acr.id
}