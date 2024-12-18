terraform -chdir=terraform init
terraform -chdir=terraform plan -var-file=../config/demo.tfvars -target=azurerm_container_registry.acr && \
  terraform -chdir=terraform apply -var-file=../config/demo.tfvars -target=azurerm_container_registry.acr -auto-approve

./scripts/build_docker_image.sh

terraform -chdir=terraform plan -var-file=../config/demo.tfvars && \
  terraform -chdir=terraform apply -var-file=../config/demo.tfvars -auto-approve