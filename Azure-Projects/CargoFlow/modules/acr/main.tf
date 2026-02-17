
resource "random_string" "suffix" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_container_registry" "acr" {
  name                = "enterpriseacr${random_string.suffix.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Premium"
  admin_enabled       = false
}

variable "resource_group_name" {}
variable "location" {}
