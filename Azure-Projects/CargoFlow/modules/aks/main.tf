
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "enterprise-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "secureaks"

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = var.subnet_id
    enable_auto_scaling = true
    min_count  = 2
    max_count  = 6
  }

  identity { type = "SystemAssigned" }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  }

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_id
  }

  role_based_access_control_enabled = true
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

variable "resource_group_name" {}
variable "location" {}
variable "subnet_id" {}
variable "log_analytics_id" {}
variable "node_count" {}
variable "vm_size" {}
