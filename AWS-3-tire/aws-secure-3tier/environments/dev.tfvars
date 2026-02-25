aws_region = "us-east-1"
environment = "dev"

vpc_cidr = "10.10.0.0/16"
public_subnets = ["10.10.1.0/24", "10.10.2.0/24"]
web_subnets    = ["10.10.11.0/24", "10.10.12.0/24"]
app_subnets    = ["10.10.21.0/24", "10.10.22.0/24"]
db_subnets     = ["10.10.31.0/24", "10.10.32.0/24"]

instance_type_web = "t3.micro"
instance_type_app = "t3.micro"
db_instance_class = "db.t3.micro"
domain_name = "example.com"