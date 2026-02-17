
resource "azurerm_virtual_network" "vnet" {
  name                = "enterprise-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

output "aks_subnet_id" {
  value = azurerm_subnet.aks_subnet.id
}

variable "resource_group_name" {}
variable "location" {}
variable "vnet_address_space" { type = list(string) }
