############################
# General
############################

variable "project_name" {
  description = "Base name for all resources"
  type        = string
  default     = "renewable-forecast"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "environment" {
  description = "Deployment environment (dev, test, prod)"
  type        = string
  default     = "dev"
}

############################
# Storage Account
############################

variable "storage_account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}

############################
# Azure ML
############################

variable "enable_system_identity" {
  description = "Enable system-assigned managed identity for AML workspace"
  type        = bool
  default     = true
}

############################
# Tags
############################

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    project     = "renewable-forecast"
    managed_by  = "terraform"
    cost_center = "research"
  }
}
