# CI/CD Pipeline for GCP Infrastructure

This project sets up a CI/CD Bitbucket pipeline to automatically deploy Terraform-managed resources to a Google Cloud Platform (GCP) environment. It uses separate feature and master branches to handle different stages of the validation, planning, and deployment steps securely.

---

## 📦 Features

- Defined GCP provider configuration in the provider.tf with project, region and credentials parameters
- Bitbucket CI/CD pipeline to deploy Terraform managed resource to GCP platform
- Terraform linting with `tflint` and Checkov `checkov` for validation & security scanning
- `feature` branch performs the lintin/checkov checks for validation & security scanning. This is followed by Terraform plan to allow for resource changes to be reviewed by peers in a pull-request before any deployments are made.
- `master` branch performs the Terraform linting, Terraform plan and Terraform apply step using -auto-approve flag to deploy the changes to the target GCP account.  
- Pipeline uses `GOOGLE_APPLICATION_CREDENTIALS` environment variables to securely authenticate to the GCP account avoiding using hardcoded credentials.  

---

## ✅ Prerequisites

- Access to Bitbucket repository with Pipelines enabled in repository settings  
- Google Cloud project with a service account and generated credentials JSON  
- Terraform ≥ 1.3 installed on the pipeline environment
- Using environment variable `GOOGLE_APPLICATION_CREDENTIALS` configured in the Bitbucket repository settings

---

## 🧱 Project Structure

```bash
.
├── bitbucket-pipelines.yml     
├── providers.tf                
├── README.md

```

 Repository Readme updated in 2025 to improve clarity and readability. The core project was originally built in 2024. 