variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "new_resource_terr"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "myVNet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "mySubnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "storage_account_name" {
  description = "Storage account name (lowercase, 3-24 chars, globally unique)"
  type        = string
  default     = "terraformstgacct001"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "myVM"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "bastion_subnet_address_prefix" {
  description = "Address prefix for the AzureBastionSubnet (minimum /26)"
  type        = string
  default     = "10.0.2.0/26"
}

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
  default     = "myNSG"
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

variable "enable_apim" {
  description = "Enable API Management module"
  type        = bool
  default     = true
}

variable "apim_name" {
  description = "API Management resource name"
  type        = string
  default     = "rc-apim-499ba45a"
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

variable "enable_iot_edge" {
  description = "Enable IoT Edge module"
  type        = bool
  default     = true
}

variable "iot_edge_hub_name" {
  description = "IoT Hub name for IoT Edge scenarios"
  type        = string
  default     = "rciothub499ba45a"
}

variable "iot_edge_sku_name" {
  description = "IoT Hub SKU name"
  type        = string
  default     = "S1"
}

variable "iot_edge_sku_capacity" {
  description = "IoT Hub SKU capacity"
  type        = number
  default     = 1
}

variable "enable_integration_services" {
  description = "Enable Integration Services module"
  type        = bool
  default     = true
}

variable "integration_servicebus_namespace_name" {
  description = "Service Bus namespace name"
  type        = string
  default     = "rcintsb499ba45a"
}

variable "integration_servicebus_sku" {
  description = "Service Bus namespace SKU"
  type        = string
  default     = "Standard"
}

variable "integration_logic_app_name" {
  description = "Logic App workflow name"
  type        = string
  default     = "integration-logic-workflow"
}

variable "enable_iot_data_platform" {
  description = "Enable IoT Data Platform module"
  type        = bool
  default     = true
}

variable "iot_data_eventhub_namespace_name" {
  description = "Event Hub namespace name"
  type        = string
  default     = "rcioteh499ba45a"
}

variable "iot_data_eventhub_name" {
  description = "Event Hub name"
  type        = string
  default     = "iot-events"
}

variable "iot_data_eventhub_sku" {
  description = "Event Hub namespace SKU"
  type        = string
  default     = "Standard"
}

variable "iot_data_eventhub_capacity" {
  description = "Event Hub throughput units"
  type        = number
  default     = 1
}

variable "iot_data_storage_account_name" {
  description = "Storage account for IoT data platform"
  type        = string
  default     = "rciotdata499ba45a01"
}

variable "enable_avd" {
  description = "Enable Azure Virtual Desktop module"
  type        = bool
  default     = true
}

variable "avd_workspace_name" {
  description = "AVD workspace name"
  type        = string
  default     = "avd-workspace-001"
}

variable "avd_workspace_friendly_name" {
  description = "AVD workspace friendly name"
  type        = string
  default     = "AVD Workspace"
}

variable "avd_workspace_description" {
  description = "AVD workspace description"
  type        = string
  default     = "Workspace for Azure Virtual Desktop"
}

variable "avd_host_pool_name" {
  description = "AVD host pool name"
  type        = string
  default     = "avd-hostpool-001"
}

variable "avd_host_pool_friendly_name" {
  description = "AVD host pool friendly name"
  type        = string
  default     = "AVD Host Pool"
}

variable "avd_application_group_name" {
  description = "AVD application group name"
  type        = string
  default     = "avd-desktop-appgroup-001"
}

variable "avd_application_group_friendly_name" {
  description = "AVD application group friendly name"
  type        = string
  default     = "AVD Desktop App Group"
}

variable "avd_maximum_sessions_allowed" {
  description = "Maximum sessions per session host"
  type        = number
  default     = 10
}