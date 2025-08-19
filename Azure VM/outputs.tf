output "public_ip_address" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = azurerm_subnet.subnet.name
}

output "network_security_group_name" {
  description = "Name of the network security group"
  value       = azurerm_network_security_group.nsg.name
}

output "network_interface_name" {
  description = "Name of the network interface"
  value       = azurerm_network_interface.nic.name
}

