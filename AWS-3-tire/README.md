# Secure Multi-Tier AWS Infrastructure (Terraform)

## Architecture

This infrastructure implements a highly secure, scalable 3-tier architecture:

- CloudFront + WAF + Shield
- ALB (Public)
- Web Tier (Private)
- App Tier (Private)
- RDS Multi-AZ
- ElastiCache
- EFS
- NAT per AZ
- Route53 DNS

## Screenshot

Refer attached architecture diagram.

## Security Features

- Encryption at rest (RDS, EBS, EFS)
- TLS enforced
- WAF Managed Rules
- Private DB subnets
- Zero Trust Security Groups
- No SSH (SSM Only)
- IAM least privilege
- Terraform remote backend encrypted

## Environments

To deploy different environments:

```
terraform init
terraform plan -var-file=environments/dev.tfvars
terraform apply -var-file=environments/dev.tfvars
```

To create new environment:

1. Copy dev.tfvars → staging.tfvars
2. Modify CIDRs & sizes
3. Run terraform apply

## Recommended Add-ons

- AWS Config
- GuardDuty
- Security Hub
- KMS CMK rotation
- Secrets Manager integration
- Backup vault with lifecycle policies

