Bitbucket pipeline configuration to deploy infrastrucutre resources to Google Cloud Platform (GCP)

2 branches defined - feature and master

Feature branch performs terraform linting/checkov checks for validation and security scanning. This is followed by terraform plan to allow for resource changes to be reviewed by peers in a pull-request before any deployment are made. 

Master branch perform the terraform linting, terraform plan and terraform apply step to deploy changes to the target environment. 

Environment variables GOOGLE_APPLICATION_CREDENTIAL used to store security keys and connect the pipleine to the Google Cloud Platform account. This is to ensure security and manageability of the account keys, and to avoid using plain-text keys which can be compromised. 
