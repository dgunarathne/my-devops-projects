
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
}

module "log_analytics" {
  source              = "./modules/log_analytics"
  resource_group_name = module.resource_group.name
  location            = var.location
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = module.resource_group.name
  location            = var.location
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = module.resource_group.name
  location            = var.location
  subnet_id           = module.network.aks_subnet_id
  log_analytics_id    = module.log_analytics.workspace_id
  node_count          = var.node_count
  vm_size             = var.vm_size
}
