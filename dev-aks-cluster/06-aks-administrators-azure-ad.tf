# Create Azure AD Group in Active Directory for AKS Admins
resource "azuread_group" "azure_admin" {
  display_name =       "${azurerm_resource_group.az-aks-tf.name}-cluster-administrators"
  description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.az-aks-tf.name}-cluster."
  mail_enabled     = true
  mail_nickname    = "azure_admin"
  security_enabled = true
  types            = ["Unified"]

}

