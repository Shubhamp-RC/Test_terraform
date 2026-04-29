output "eventhub_namespace_id" {
  description = "Event Hub namespace resource ID"
  value       = azurerm_eventhub_namespace.this.id
}

output "eventhub_id" {
  description = "Event Hub resource ID"
  value       = azurerm_eventhub.this.id
}

output "storage_account_id" {
  description = "Storage account resource ID"
  value       = azurerm_storage_account.this.id
}
