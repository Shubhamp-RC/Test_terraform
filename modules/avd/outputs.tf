output "workspace_id" {
  description = "AVD workspace resource ID"
  value       = azurerm_virtual_desktop_workspace.this.id
}

output "host_pool_id" {
  description = "AVD host pool resource ID"
  value       = azurerm_virtual_desktop_host_pool.this.id
}

output "application_group_id" {
  description = "AVD application group resource ID"
  value       = azurerm_virtual_desktop_application_group.desktop.id
}
