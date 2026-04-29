output "vm_id" {
  description = "Virtual machine ID"
  value       = azurerm_windows_virtual_machine.this.id
}

output "vm_name" {
  description = "Virtual machine name"
  value       = azurerm_windows_virtual_machine.this.name
}

output "network_interface_id" {
  description = "Network interface ID"
  value       = azurerm_network_interface.this.id
}
