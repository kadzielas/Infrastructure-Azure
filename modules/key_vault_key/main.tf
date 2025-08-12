resource "azurerm_key_vault_key" "generated_key" {
  name         = "${var.resource_name}-key"
  key_vault_id = azurerm_key_vault.example-key-vault.id
  key_type     = "RSA"
  key_size     = 2048

  tags = var.tags

  key_opts = ["decryptm", "encrypty"]

  rotation_policy {
    automatic {
      time_before_expiry = "P02D"
    }
    expire_after = "P04D"
  }
}
