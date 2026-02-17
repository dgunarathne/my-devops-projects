
resource "azurerm_log_analytics_workspace" "law" {
  name                = "enterprise-law"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

output "workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}

variable "resource_group_name" {}
variable "location" {}
