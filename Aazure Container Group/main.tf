terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_group" "aci" {
  name                = "nginx-container"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"

  container {
    name   = "nginx"
    image  = "mcr.microsoft.com/oss/nginx/nginx:1.21.6"
    cpu    = 0.5
    memory = 1.5
    ports {
      port     = 80
      protocol = "TCP"
    }
   
  }

  tags = {
    environment = "production"
    project     = "nginx-aci"
  }

  ip_address_type = "Public"
  dns_name_label  = "my-nginx-aci-${random_id.unique.hex}" # must be globally unique

}

resource "random_id" "unique" {
  byte_length = 4
}