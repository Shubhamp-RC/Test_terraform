variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "apim_name" {
  description = "API Management service name"
  type        = string
}

variable "publisher_name" {
  description = "Publisher display name"
  type        = string
}

variable "publisher_email" {
  description = "Publisher email"
  type        = string
}

variable "sku_name" {
  description = "API Management SKU"
  type        = string
  default     = "Consumption_0"
}
