# POC Application Deployment to Azure

This repository contains a **Proof of Concept (POC)** application that demonstrates deployment to Microsoft Azure using
**Terraform**. The repository includes all the necessary configurations, scripts, and pipeline setup to automate the
deployment process.

## Features

- **Infrastructure as Code**: Uses Terraform to define and manage Azure resources.
- **Automated Deployment**: Includes a pipeline script to coordinate the deployment process efficiently.
- **Custom Application**: The application serves as an example of how to architect and deploy modern cloud-native
  applications.

## Prerequisites

Before using this repository, ensure you have the following installed and configured:

- **Terraform** (latest stable version)
- **Azure CLI**
- **bash** (or another supported shell environment for running scripts)

## Repository Structure

- `terraform/`: Contains Terraform configuration files for setting up the Azure infrastructure.
- `app/`: Includes the source code of the custom application.
- `scripts/`: Contains the pipeline script to automate the deployment.
- `README.md`: Project documentation.

## Usage

### 1. Clone the Repository

```bash
git clone https://github.com/will-lightfeather/azure-poc-app1-9100760215.git
cd azure-poc-app1-9100760215
```
### 2. Run Pipeline

Make sure you are logged in to your Azure account using the Azure CLI, then run:

```bash
./scripts/pipeline.sh
```

The script will:

1. Trigger the deployment pipeline.
2. Validate the Terraform setup.
3. Build and deploy the custom application to the provisioned Azure resources.

## License

This project is licensed under my license, which grants you a license to contribute this 
repository for the duration of the scheduled interview only.

---