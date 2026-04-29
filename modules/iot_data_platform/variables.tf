variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "eventhub_namespace_name" {
  description = "Event Hub namespace name"
  type        = string
}

variable "eventhub_name" {
  description = "Event Hub name"
  type        = string
}

variable "eventhub_sku" {
  description = "Event Hub namespace SKU"
  type        = string
  default     = "Standard"
}

variable "eventhub_capacity" {
  description = "Event Hub throughput units"
  type        = number
  default     = 1
}

variable "storage_account_name" {
  description = "Storage account name for IoT data landing"
  type        = string
}
