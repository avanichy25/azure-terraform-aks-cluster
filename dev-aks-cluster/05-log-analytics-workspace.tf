# Create Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "insights" {
  name = "logs-${random_pet.azureaksrandom.id}"
  location = azurerm_resource_group.az-aks-tf.location
  resource_group_name = azurerm_resource_group.az-aks-tf.name
  retention_in_days = 30
  }