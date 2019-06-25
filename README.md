# This repo contain an example which creates a DNS record in AWS with Terraform

## Prerequisites 
- Active domain name - You can take one from a provider of your choice
- Register or transfer the domain in [Cloudflare](https://www.cloudflare.com/)
- Install [Terraform](https://www.terraform.io/)
## Clone the repo
```
$ git clone https://github.com/chavo1/cloudflare-nginx-terraform.git
$ cd cloudflare-nginx-terraform
```
- Add needed variable in example.tfvars
```
$ terraform init
$ terraform plan
$ terraform apply
```
- Do not forget to destroy the environment

