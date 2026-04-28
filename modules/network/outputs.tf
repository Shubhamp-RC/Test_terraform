output "resource_group_name" {
  description = "Created resource group name"
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "Resource group location"
  value       = azurerm_resource_group.this.location
}

output "subnet_id" {
  description = "Created subnet ID"
  value       = azurerm_subnet.this.id
}
