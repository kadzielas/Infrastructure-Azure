variable "location" {}
variable "tags" {}
variable "resource_name" {}
variable "subscription" {
  type      = string
  sensitive = true
}
