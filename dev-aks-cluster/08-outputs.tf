 Create Outputs
# 1. Resource Group Location
# 2. Resource Group Id
# 3. Resource Group Name

# Resource Group Outputs


# Azure AKS Versions Datasource
output "location" {
  value = azurerm_resource_group.az-aks-tf.location
}

output "resource_group_name" {
  value = azurerm_resource_group.az-aks-tf.name
}

output "resource_group_id" {
  value = azurerm_resource_group.az-aks-tf.id
}

# Azure AKS Versions Datasource
output "versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

output "latest" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

# Azure AD Group Object Id

output "id" {
  value = azuread_group.azure_admin.id
}

output "admin_group_object_id" {
  value = azuread_group.azure_admin.object_id
}


# Azure AKS Outputs

output "cluster" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
  
}


output "cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}


output "ak_cluster_kubernetes_version" {
  value = azurerm_kubernetes_cluster.aks_cluster.kubernetes_version 
}
