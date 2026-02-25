variable "aws_region" {}
variable "environment" {}
variable "vpc_cidr" {}
variable "public_subnets" { type = list(string) }
variable "web_subnets" { type = list(string) }
variable "app_subnets" { type = list(string) }
variable "db_subnets" { type = list(string) }
variable "instance_type_web" {}
variable "instance_type_app" {}
variable "db_instance_class" {}
variable "db_username" { sensitive = true }
variable "db_password" { sensitive = true }
variable "domain_name" {}