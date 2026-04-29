variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "servicebus_namespace_name" {
  description = "Service Bus namespace name"
  type        = string
}

variable "servicebus_sku" {
  description = "Service Bus SKU"
  type        = string
  default     = "Standard"
}

variable "logic_app_name" {
  description = "Logic App workflow name"
  type        = string
}
