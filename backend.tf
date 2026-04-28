terraform {
  backend "azurerm" {
    resource_group_name  = "terraform_RG"
    storage_account_name = "terraformstoragenew"
    container_name       = "terraformcontainernew"
    key                  = "terraform.tfstate"
  }
}