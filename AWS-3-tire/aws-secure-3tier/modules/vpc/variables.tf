variable "vpc_cidr" {}
variable "public_subnets" { type = list(string) }
variable "web_subnets" { type = list(string) }
variable "app_subnets" { type = list(string) }
variable "db_subnets" { type = list(string) }
variable "environment" {}