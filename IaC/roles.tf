resource "azurerm_role_assignment" "owner_lz_spn_assignment" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.lz_app_sp.object_id
}

resource "azurerm_role_assignment" "kv_lz_spn_assignment" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Key Vault Administrator"
  principal_id         = azuread_service_principal.lz_app_sp.object_id
}
