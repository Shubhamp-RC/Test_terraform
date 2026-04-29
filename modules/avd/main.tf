resource "azurerm_virtual_desktop_workspace" "this" {
  name                = var.workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  friendly_name       = var.workspace_friendly_name
  description         = var.workspace_description
}

resource "azurerm_virtual_desktop_host_pool" "this" {
  name                = var.host_pool_name
  location            = var.location
  resource_group_name = var.resource_group_name

  type                     = "Pooled"
  load_balancer_type       = "BreadthFirst"
  maximum_sessions_allowed = var.maximum_sessions_allowed
  friendly_name            = var.host_pool_friendly_name
}

resource "azurerm_virtual_desktop_application_group" "desktop" {
  name                = var.application_group_name
  location            = var.location
  resource_group_name = var.resource_group_name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.this.id
  friendly_name = var.application_group_friendly_name
}

resource "azurerm_virtual_desktop_workspace_application_group_association" "this" {
  workspace_id         = azurerm_virtual_desktop_workspace.this.id
  application_group_id = azurerm_virtual_desktop_application_group.desktop.id
}
