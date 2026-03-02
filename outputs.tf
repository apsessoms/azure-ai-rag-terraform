output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  value = azurerm_storage_account.sa.name
}

output "docs_container_name" {
  value = azurerm_storage_container.docs.name
}

output "key_vault_name" {
  value = azurerm_key_vault.kv.name
}

output "app_insights_instrumentation_key" {
  value     = azurerm_application_insights.appi.instrumentation_key
  sensitive = true
}

output "search_service_name" {
  value = azurerm_search_service.search.name
}

output "function_app_name" {
  value = azurerm_linux_function_app.func.name
}