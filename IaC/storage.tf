resource "random_integer" "suffix" {
    min = 100
    max = 999
}

resource "azurerm_storage_account" "lz_state_sa" {
  name                     = "infrastate${var.env}${random_integer.suffix.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "lz_tfstate_container" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.lz_state_sa.id
  container_access_type = "private"
}