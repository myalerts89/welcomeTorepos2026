resource "azurerm_resource_group" "RG1" {
  name     = "linux-rg"
  location = "east us"
}



resource "azurerm_managed_disk" "disk1" {
  name                 = "var."
  location             = var.location
  resource_group_name  = var.location
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "10"

  tags = {
    environment = "staging"
  }
}
