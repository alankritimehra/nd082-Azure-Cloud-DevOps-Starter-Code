# Deploying a Web Server in Azure

This project deploys a scalable web server infrastructure in Azure using Packer and Terraform. Packer creates a custom Ubuntu server image containing a simple web application, and Terraform deploys multiple virtual machines behind an Azure Load Balancer.

## Resources Created

- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Load Balancer
- Backend Address Pool
- Network Interfaces
- VM Availability Set
- Linux Virtual Machines
- Managed Disks

## Packer Instructions

Build the custom server image:

packer build server.json

The image created is:

udacityPackerImage

## Terraform Instructions

Initialize Terraform:

terraform init

Format and validate:

terraform fmt
terraform validate

Create a plan:

terraform plan -out solution.plan

Apply the infrastructure:

terraform apply solution.plan

Destroy resources after review:

terraform destroy

## Customization

Update `vars.tf` to customize deployment.

Examples:

location = "westeurope"

resource_group_name = "Azuredevops"

vm_count = 2

packer_image_name = "udacityPackerImage"

The `vm_count` variable controls the number of virtual machines. The default is 2.

## Expected Output

Terraform should complete successfully and show resources created without errors. The infrastructure deploys multiple Linux VMs using the Packer image and connects them to a load balancer backend pool.
