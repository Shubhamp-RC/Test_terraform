variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "iot_hub_name" {
  description = "IoT Hub name"
  type        = string
}

variable "sku_name" {
  description = "IoT Hub SKU name"
  type        = string
  default     = "S1"
}

variable "sku_capacity" {
  description = "IoT Hub SKU capacity"
  type        = number
  default     = 1
}
