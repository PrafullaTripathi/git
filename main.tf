terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-pipeline"
    storage_account_name = "stg22pipeline"
    container_name = "containerpipeline22"
    key = "key22.tfstate"
  }
}

provider "azurerm" {
    features {}
     subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff" 
    }
 
 resource "azurerm_resource_group" "rgkhetan22" {
name = "rgkhetan22"
location = "westindia"
 }

resource "azurerm_storage_account" "stg_khetan22" {
depends_on = [azurerm_resource_group.rgkhetan22]
name = "stgkhetan22"
resource_group_name = "rgkhetan22"
location = "westindia"
account_tier             = "Standard"
 account_replication_type = "LRS"
}


