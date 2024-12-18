resource "azurerm_resource_group" "rg" {
  name     = "${var.app_name}-rg"
  location = "East US"
}
