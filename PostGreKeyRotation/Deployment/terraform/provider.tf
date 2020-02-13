provider "azurerm" {
	version = "~> 1.4"
}

provider "azuread" {
	version = "~> 0.7"
}

provider "random" {
	version = "~> 2.2"
}

provider "postgresql" {
	version = "~> 1.4.0"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "KeyRotateState"
    storage_account_name = "jwtfkrstatestore"
    container_name       = "terraform-state"
    key                  = "development.tfstate"
  }
}
