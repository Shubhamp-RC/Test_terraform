resource "azurerm_iothub" "this" {
  name                = var.iot_hub_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = var.sku_name
    capacity = var.sku_capacity
  }
}
