terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

terraform {
  backend "azurerm" {
    use_azuread_auth          = true
    resoucresource_group_name = "terraform-resource-group"             # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id                 = "4d56f800-401c-4a94-b1f5-22a9bf1d3d8d" # Can also be set via `ARM_TENANT_ID` environment variable.
    client_id                 = "e43b9c74-2036-4ad1-b48a-10c79aa6921d" # Can also be set via `ARM_CLIENT_ID` environment variable.
    storage_account_name      = "abcrunterraformcloudshell"            # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name            = "tfstate"                              # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                       = "prod.terraform.tfstate"               # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
