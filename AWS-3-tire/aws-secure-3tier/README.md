# Secure Multi-Tier AWS Infrastructure (Terraform)

## Architecture
This infrastructure implements a highly secure and scalable 3-tier AWS architecture:
- CloudFront + WAF + Shield
- ALB (Public)
- Web Tier (Private)
- App Tier (Private)
- RDS Multi-AZ
- ElastiCache
- EFS
- NAT per AZ
- Route53 DNS

## Deployment

terraform init
terraform plan -var-file=environments/dev.tfvars
terraform apply -var-file=environments/dev.tfvars

## Security Features
- Encryption at rest
- Multi-AZ
- Zero Trust Security Groups
- WAF Managed Rules
- No public database
- SSM-based access (no SSH)

Refer to attached architecture diagram.