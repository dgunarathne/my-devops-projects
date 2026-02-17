az group create --name tfstate-rg --location eastus

az storage account create \
  --name tfstateprod001 \
  --resource-group tfstate-rg \
  --sku Standard_LRS \
  --encryption-services blob

az storage container create \
  --name tfstate \
  --account-name tfstateprod001
