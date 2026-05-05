# -------------------------------------------------------
# TEST ENVIRONMENT variables — safe defaults.
# Resource names are suffixed with "-test" to avoid
# conflicts with production resources.
# -------------------------------------------------------

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "new_resource_terr_test"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "myVNet-test"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "mySubnet-test"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.1.1.0/24"]
}

variable "bastion_subnet_address_prefix" {
  description = "Address prefix for the AzureBastionSubnet (minimum /26)"
  type        = string
  default     = "10.1.2.0/26"
}

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
  default     = "myNSG-test"
}

variable "storage_account_name" {
  description = "Storage account name (lowercase, 3-24 chars, globally unique)"
  type        = string
  default     = "terraformstgaccttest1"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "myVM-test"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "apim_name" {
  description = "API Management resource name"
  type        = string
  default     = "rc-apim-test"
}

variable "apim_publisher_name" {
  description = "API Management publisher name"
  type        = string
  default     = "Rapid Circle"
}

variable "apim_publisher_email" {
  description = "API Management publisher email"
  type        = string
  default     = "admin@rapidcircle.com"
}

variable "apim_sku_name" {
  description = "API Management SKU"
  type        = string
  default     = "Consumption_0"
}
