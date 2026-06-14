variable "location" {
  description = "Azure deployment location"
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Existing Udacity resource group"
  default     = "Azuredevops"
}

variable "vm_count" {
  description = "Number of virtual machines"
  default     = 2
}

variable "project_name" {
  description = "Project name tag"
  default     = "Deploying Web Server in Azure"
}

variable "admin_username" {
  description = "Admin username for VMs"
  default     = "azureuser"
}

variable "packer_image_name" {
  description = "Packer image name"
  default     = "udacityPackerImage"
}
