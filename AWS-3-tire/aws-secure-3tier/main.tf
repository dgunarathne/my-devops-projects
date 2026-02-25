module "vpc" {
  source          = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  web_subnets     = var.web_subnets
  app_subnets     = var.app_subnets
  db_subnets      = var.db_subnets
  environment     = var.environment
}