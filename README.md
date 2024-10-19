# AWS Secure Web Infrastructure

This project sets up a secure web infrastructure on AWS using Terraform and Ansible. It includes VPC, subnets, EC2 instances, security groups, and a Bastion host. Ansible is used to configure Nginx on the EC2 instances.

## Project Structure

```
.
├── .gitignore
├── .vscode/
│   └── settings.json
├── ansible/
│   ├── inventory
│   ├── nginx_setup.yml
│   └── roles/
│       └── nginx/
│           └── tasks/
│               └── main.yml
├── terraform/
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
│   └── modules/
│       ├── vpc/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       ├── ec2/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       ├── bastion/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       └── security_groups/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
└── README.md
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- AWS account with appropriate permissions

## Terraform Setup

1. **Initialize Terraform:**

    ```sh
    cd terraform
    terraform init
    ```

2. **Apply Terraform Configuration:**

    ```sh
    terraform apply
    ```

    This will create the VPC, subnets, EC2 instances, security groups, and Bastion host.

## Ansible Setup

1. **Update Inventory File:**

    Update the [`inventory`](ansible/inventory) file with the public and private IPs of the EC2 instances.

2. **Run Ansible Playbook:**

    ```sh
    ansible-playbook -i ansible/inventory ansible/nginx_setup.yml
    ```

    This will install and start Nginx on the EC2 instances.

## Outputs

After running Terraform, the following outputs will be available:

- VPC ID
- Public Subnet ID
- Private Subnet ID
- Public EC2 Instance ID and Public IP
- Private EC2 Instance ID
- Bastion Host ID and Public IP
- Security Group IDs

## Clean Up

To destroy the infrastructure, run:

```sh
terraform destroy
```
