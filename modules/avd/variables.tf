variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "workspace_name" {
  description = "AVD workspace name"
  type        = string
}

variable "workspace_friendly_name" {
  description = "AVD workspace friendly name"
  type        = string
}

variable "workspace_description" {
  description = "AVD workspace description"
  type        = string
  default     = "AVD workspace"
}

variable "host_pool_name" {
  description = "AVD host pool name"
  type        = string
}

variable "host_pool_friendly_name" {
  description = "AVD host pool friendly name"
  type        = string
}

variable "application_group_name" {
  description = "AVD application group name"
  type        = string
}

variable "application_group_friendly_name" {
  description = "AVD application group friendly name"
  type        = string
}

variable "maximum_sessions_allowed" {
  description = "Maximum sessions allowed per host"
  type        = number
  default     = 10
}
