data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "example-key-vault" {
  name                            = "examplekeyvault"
  location                        = var.location
  resource_group_name             = module.resource_group.resource_group_name
  sku_name                        = "standard"
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days      = 7
  enable_rbac_authorization       = true
  enabled_for_template_deployment = true

  access_policy = {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
      "List",
      "Create",
      "Purge",
      "Update",
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Purge",
    ]
  }
}
