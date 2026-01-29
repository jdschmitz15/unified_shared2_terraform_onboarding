terraform {
  required_version = ">=0.12"
  required_providers {
    illumio-cloudsecure = {
      source  = "illumio/illumio-cloudsecure"
      version = "~> 1.7.2"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.110.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    } 
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "illumio-cloudsecure" {
  client_id     = var.illumio_cloudsecure_client_id
  client_secret = var.illumio_cloudsecure_client_secret

  request_timeout = "60s"
}

provider "aws" {
  region = "us-east-1" 
}



provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = var.azure_subscription_id
}

provider "azuread" {
}

# # Generate random text for a unique storage account name
resource "random_id" "random_id" {
  # keepers = {
  #   # Generate a new ID only when a new resource group is defined
  #   resource_group = azurerm_resource_group.rg.name
  # }

  byte_length = 8
}