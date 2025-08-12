terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>2.5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azapi" {
  subscription_id = var.subscription
}

provider "azurerm" {
  subscription_id = var.subscription
  features {
    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = false
    }
  }
}
