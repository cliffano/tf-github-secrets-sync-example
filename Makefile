# GITHUB_TOKEN is used for github_actions_secret authentication
ifndef GITHUB_TOKEN
    $(error Please specify GITHUB_TOKEN)
endif

clean:
	rm -rf .terraform/

init:
	terraform init -var-file=repos.tfvars

lint:
	terraform fmt -recursive
	terraform validate

plan:
	terraform plan -var-file=repos.tfvars

apply:
	terraform apply -var-file=repos.tfvars
	rm -f terraform.tfstate # tfstate file is deleted because it stores the secrets value in plain text

.PHONY: clean init plan apply
