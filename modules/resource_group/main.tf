resource "azapi_resource" "rg-example" {
  type      = "Microsoft.Resources/resourceGroups@2025-04-01"
  name      = var.resource_name
  location  = var.location
  parent_id = "/subscriptions/${var.subscription}"
  tags      = var.tags
}
