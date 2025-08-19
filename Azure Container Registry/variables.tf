variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "East US"
}

variable "vnet_name" {
  type    = string
  default = "my-vnet"
}
variable "vnet_address_space" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  type    = string
  default = "my-subnet"
}

variable "subnet_prefix" {
  type    = string
  default = "10.0.1.0/24"
}

variable "nsg_name" {
  type    = string
  default = "vm-nsg"
}

variable "nic_name" {
  type    = string
  default = "vm-nic"
}

variable "public_ip_name" {
  type    = string
  default = "vm-public-ip"
}

variable "vm_name" {
  type    = string
  default = "my-vm"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "ayemunhossain"
}

variable "admin_password" {
  type        = string
  description = "The admin password for the VM"
  sensitive   = true
}

variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "tags" {
  type = map(string)
  default = {
    environment = "dev"
    project     = "terraform-vm"
  }
}

variable "law_name" {
  type    = string
  default = "my-law"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}