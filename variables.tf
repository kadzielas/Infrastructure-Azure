variable "subscription" {
  type      = string
  sensitive = true
}

variable "location" {
  type = string
}


variable "tags" {
  type = map(string)
}

variable "resource_name" {
  type = string
}
