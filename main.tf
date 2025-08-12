module "resource_group" {
  source = "./modules/resource_group"

  resource_name = var.resource_name
  location      = var.location
  subscription  = var.subscription
  tags          = var.tags

  providers = {
    azapi = azapi
  }
}
