# Sample Terraform Template - AWS General Immersion Day

## Disclaimer

**This project is used for demo purposes only and should NOT be considered for production use.**

## Overview

This repository contains Terraform templates to provision the following resources:
- VPC with a public subnet
- EC2 instance with userdata of a simple PHP web application
- Security Group for the web server that allows HTTP and SSH inbound

It is based on the labs in AWS General Immersion Day workshop - [EC2 Linux Hands on Lab](https://catalog.us-east-1.prod.workshops.aws/workshops/f3a3e2bd-e1d5-49de-b8e6-dac361842e76/en-US/basic-modules/10-ec2/ec2-linux) and [VPC Hands on Lab](https://catalog.us-east-1.prod.workshops.aws/workshops/f3a3e2bd-e1d5-49de-b8e6-dac361842e76/en-US/basic-modules/20-vpc/vpc)

## Deployment 

### Pre-requisites

1. Installed [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli) and [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
2. AWS Credentials (IAM User or Role) to the account where the resources will be deployed.
3. Create an EC2 Key Pair - will be used in the deployment of EC2 instance.
4. To store remote state, create an S3 bucket and fill in the bucket, key and region under the `backend` section in `providers.tf`.

### Deployment Steps

1. Rename `terraform.tfvars.template` to `terraform.tfvars` and fill in all the required variables (see `variables.tf` for more information).
2. Run the following commands:
    ```
    terraform init
    terraform plan
    terraform apply
    ```