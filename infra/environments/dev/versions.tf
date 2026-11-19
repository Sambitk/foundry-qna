terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "~> 2.0"
    }
  }

  backend "azurerm" {
    use_azuread_auth = true
    key              = "foundry-dev.terraform.tfstate"

    # Supply storage_account_name and container_name during backend initialization.
  }
}
