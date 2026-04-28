# Azure VM Deployment with Terraform

This repository contains a modular Terraform configuration to deploy an Azure Virtual Machine along with a Resource Group, Virtual Network, and Subnet.

## Modular Structure
- `modules/network/`: Handles Resource Group, Virtual Network, and Subnet creation.
- `modules/compute/`: Handles Network Interface and Virtual Machine creation.

## Remote State
The configuration uses Azure Storage Account for remote state management. The backend is configured in `backend.tf`. Before deploying, ensure you have:
1. An Azure Storage Account with a container for state files.
2. Updated the backend configuration in `backend.tf` with your storage account details.

Default backend settings (update as needed):
- Resource Group: `terraform-state-rg`
- Storage Account: `terraformstate123`
- Container: `tfstate`
- Key: `terraform.tfstate`

## Prerequisites
- Azure subscription
- Azure CLI installed and logged in (`az login`)
- GitHub repository with secrets configured (for CI/CD)

## Setup
1. Clone this repository.
2. Run `az login` to authenticate with Azure.
3. Update backend configuration in `main.tf` if needed.
4. Configure the following GitHub secrets (for automated deployment):
   - `AZURE_CREDENTIALS`: Azure service principal credentials in JSON format.

## Variables
Customize deployment by modifying `variables.tf` or passing via command line.

## Deployment
### Automated (GitHub Actions)
Push to the `main` branch to trigger deployment.

### Manual
```bash
terraform init
terraform plan
terraform apply
```

Provide `admin_password` when prompted or via `TF_VAR_admin_password`.

## Resources Created
- Resource Group
- Virtual Network
- Subnet
- Network Interface
- Linux Virtual Machine (Ubuntu 22.04)
