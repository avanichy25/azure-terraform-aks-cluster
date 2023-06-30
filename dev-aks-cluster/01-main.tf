# We will define 
# 1. Terraform Settings Block
# 1. Required Version Terraform
# 2. Required Terraform Providers
# 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 2. Terraform Provider Block for AzureRM
# 3. Terraform Resource Block: Define a Random Pet Resource

# 3. Terraform Resource Block: Define a Random Pet Resource

terraform {
  required_version = ">= 0.3"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 2.0"
      }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
    }
  }


provider "azurerm" {
  client_id= "d5c2020c-66a9-48c8-ba0c-bae44501587c"
  client_secret= "RmR8Q~w6hoUGYwbsiUfb~2EiERi~Mda-xxu0zbWc"
  subscription_id= "058bc466-7900-46a0-9403-eb04e3388a62"
  tenant_id= "ad1e5f27-489b-4bad-a209-f3b5741fd81c"
  features {
    
  }
  
}

resource "random_pet" "azureaksrandom" {
  
}
