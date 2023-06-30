# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

variable "location" {
  description = "resource group location"
  default = "East US"
  type = string
}

variable "resource_group_name" {
  description = "value"
  default = "az-aks-tf"
  type = string
}

variable "environment" {
  description = "environment tag"
  default = "dev"
  type = string
}

variable "ssh_keys" {
  description = "ssh keys path"
  default = "/Users/ab/.ssh/aks-prod-sshkeys/aksprodsshkey.pub"
  type = string
}

variable "windows_user" {
  description = "user name of windows pool"
  default = "win_user"
  type = string
}

variable "windows_password" {
  description = "password of windows pool"
  default = "P@ssw0rd1234testforme"
  type = string
}
