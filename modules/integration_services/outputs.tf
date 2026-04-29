output "servicebus_namespace_id" {
  description = "Service Bus namespace resource ID"
  value       = azurerm_servicebus_namespace.this.id
}

output "logic_app_id" {
  description = "Logic App workflow resource ID"
  value       = azurerm_logic_app_workflow.this.id
}
