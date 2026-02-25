terraform {
  backend "azurerm" {
    resource_group_name  = azurerm_resource_group.example.name
    storage_account_name = "${var.prefix}-storage-account"
    container_name       = "terraform-state-container"
    key                  = "terraform.tfstate"  # The name of the blob file
  }
}