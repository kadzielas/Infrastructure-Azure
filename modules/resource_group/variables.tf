variable "location" { type = string }
variable "tags" { type = map(string) }
variable "resource_name" { type = string }
variable "subscription" {
  type      = string
  sensitive = true
}
