terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.12.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.0"
    }
    incident = {
      source  = "incident-io/incident"
      version = "5.35.0"
    }
    restapi = {
      source  = "Mastercard/restapi"
      version = "3.0.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "2.9.0"
    }
  }
}
terraform {

  cloud {

    organization = "georgi-berchev"

    workspaces {
      name = "connection-reset-providers"
    }
  }
}
provider "null" {
  # Configuration options
}
resource "random_pet" "name" {
  length    = 4
  separator = "-"
}
