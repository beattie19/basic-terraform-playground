### Ubuntu installation
- sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
- curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
 - sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
 - sudo apt-get update && sudo apt-get install terraform
 - terraform -install-autocomplete (optional)

### Basic setup
 - cd terraform/s3
 - terraform init
 - terraform validate
 - aws-vault exec xadmin-sbx -- terraform plan
 - aws-vault exec xadmin-sbx -- terraform apply
 - aws-vault exec xadmin-sbx -- terraform destroy