# terraform-docker-nginx
# Terradorm Docker Nginx
Deploy nginx in Docker using Terraform with custom HTML.

##Architecture
- **IaC Tool**: Terraform
- **Provider**: Docker
- **Container**: nginx:stable-alpine
- **OS**: Kali Linux
- **Cost**: $0

##Quick Start
'''bash
git clone https://github.com/cloudsecluffy/terraform-docker-nginx.git
cd terraform-docker-nginx
terraform init
terraform apply -auto-approve
