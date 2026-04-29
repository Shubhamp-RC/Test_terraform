terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source = "./modules/network"

  resource_group_name           = var.resource_group_name
  location                      = var.location
  vnet_name                     = var.vnet_name
  vnet_address_space            = var.vnet_address_space
  subnet_name                   = var.subnet_name
  subnet_address_prefixes       = var.subnet_address_prefixes
  bastion_subnet_address_prefix = var.bastion_subnet_address_prefix
  nsg_name                      = var.nsg_name
}

module "storage" {
  source = "./modules/storage"

  resource_group_name  = module.network.resource_group_name
  location             = module.network.location
  storage_account_name = var.storage_account_name
}

module "compute" {
  source = "./modules/compute"

  resource_group_name = module.network.resource_group_name
  location            = module.network.location
  subnet_id           = module.network.subnet_id
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

module "apim" {
  count  = var.enable_apim ? 1 : 0
  source = "./modules/apim"

  resource_group_name = module.network.resource_group_name
  location            = module.network.location
  apim_name           = var.apim_name
  publisher_name      = var.apim_publisher_name
  publisher_email     = var.apim_publisher_email
  sku_name            = var.apim_sku_name
}

module "iot_edge" {
  count  = var.enable_iot_edge ? 1 : 0
  source = "./modules/iot_edge"

  resource_group_name = module.network.resource_group_name
  location            = module.network.location
  iot_hub_name        = var.iot_edge_hub_name
  sku_name            = var.iot_edge_sku_name
  sku_capacity        = var.iot_edge_sku_capacity
}

module "integration_services" {
  count  = var.enable_integration_services ? 1 : 0
  source = "./modules/integration_services"

  resource_group_name        = module.network.resource_group_name
  location                   = module.network.location
  servicebus_namespace_name  = var.integration_servicebus_namespace_name
  servicebus_sku             = var.integration_servicebus_sku
  logic_app_name             = var.integration_logic_app_name
}

module "iot_data_platform" {
  count  = var.enable_iot_data_platform ? 1 : 0
  source = "./modules/iot_data_platform"

  resource_group_name    = module.network.resource_group_name
  location               = module.network.location
  eventhub_namespace_name = var.iot_data_eventhub_namespace_name
  eventhub_name          = var.iot_data_eventhub_name
  eventhub_sku           = var.iot_data_eventhub_sku
  eventhub_capacity      = var.iot_data_eventhub_capacity
  storage_account_name   = var.iot_data_storage_account_name
}

module "avd" {
  count  = var.enable_avd ? 1 : 0
  source = "./modules/avd"

  resource_group_name               = module.network.resource_group_name
  location                          = module.network.location
  workspace_name                    = var.avd_workspace_name
  workspace_friendly_name           = var.avd_workspace_friendly_name
  workspace_description             = var.avd_workspace_description
  host_pool_name                    = var.avd_host_pool_name
  host_pool_friendly_name           = var.avd_host_pool_friendly_name
  application_group_name            = var.avd_application_group_name
  application_group_friendly_name   = var.avd_application_group_friendly_name
  maximum_sessions_allowed          = var.avd_maximum_sessions_allowed
}