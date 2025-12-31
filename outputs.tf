############################
# Resource Group
############################

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Azure region of the deployment"
  value       = azurerm_resource_group.rg.location
}

############################
# Storage
############################

output "storage_account_name" {
  description = "Azure Data Lake Gen2 storage account name"
  value       = azurerm_storage_account.lake.name
}

output "storage_account_id" {
  description = "Storage account resource ID"
  value       = azurerm_storage_account.lake.id
}

############################
# Azure ML
############################

output "ml_workspace_name" {
  description = "Azure Machine Learning workspace name"
  value       = azurerm_machine_learning_workspace.aml.name
}

output "ml_workspace_id" {
  description = "Azure Machine Learning workspace ID"
  value       = azurerm_machine_learning_workspace.aml.id
}

############################
# Data Factory
############################

output "data_factory_name" {
  description = "Azure Data Factory name"
  value       = azurerm_data_factory.adf.name
}

############################
# Monitoring
############################

output "application_insights_name" {
  description = "Application Insights name"
  value       = azurerm_application_insights.ai.name
}
