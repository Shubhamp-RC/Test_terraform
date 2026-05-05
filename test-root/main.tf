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

# -------------------------------------------------------
# TEST DEPLOYMENT — safe to experiment here.
# Uses separate state key: test/terraform.tfstate
# Reuses same modules as production root.
# Enable/disable modules by toggling the variables below.
# -------------------------------------------------------

module "network" {
  source = "../modules/network"

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
  source = "../modules/storage"

  resource_group_name  = module.network.resource_group_name
  location             = module.network.location
  storage_account_name = var.storage_account_name
}

# Uncomment to test compute changes
# module "compute" {
#   source = "../modules/compute"
#
#   resource_group_name = module.network.resource_group_name
#   location            = module.network.location
#   subnet_id           = module.network.subnet_id
#   vm_name             = var.vm_name
#   vm_size             = var.vm_size
#   admin_username      = var.admin_username
#   admin_password      = var.admin_password
# }

# Uncomment to test APIM changes
# module "apim" {
#   source = "../modules/apim"
#
#   resource_group_name = module.network.resource_group_name
#   location            = module.network.location
#   apim_name           = var.apim_name
#   publisher_name      = var.apim_publisher_name
#   publisher_email     = var.apim_publisher_email
#   sku_name            = var.apim_sku_name
# }
