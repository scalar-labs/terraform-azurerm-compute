output "vm_ids" {
  description = "Virtual machine ids created."
  value       = concat(azurerm_virtual_machine.vm-windows.*.id, azurerm_virtual_machine.vm-windows-with-datadisk.*.id, azurerm_virtual_machine.vm-linux.*.id, azurerm_virtual_machine.vm-linux-with-datadisk.*.id)
}

output "vm_identities" {
  description = "identities of virtual machines created."
  value       = concat(azurerm_virtual_machine.vm-windows.*.identity, azurerm_virtual_machine.vm-windows-with-datadisk.*.identity, azurerm_virtual_machine.vm-linux.*.identity, azurerm_virtual_machine.vm-linux-with-datadisk.*.identity)
}

output "network_security_group_id" {
  description = "id of the security group provisioned"
  value       = length(azurerm_network_security_group.vm.*.id) > 0 ? azurerm_network_security_group.vm[0].id : ""
}

output "network_security_group_name" {
  description = "name of the security group provisioned"
  value       = length(azurerm_network_security_group.vm.*.name) > 0 ? azurerm_network_security_group.vm[0].name : ""
}

output "network_interface_ids" {
  description = "ids of the vm nics provisoned."
  value       = azurerm_network_interface.vm.*.id
}

output "network_interface_private_ip" {
  description = "private ip addresses of the vm nics"
  value       = azurerm_network_interface.vm.*.private_ip_address
}

output "public_ip_id" {
  description = "id of the public ip address provisoned."
  value       = azurerm_public_ip.vm.*.id
}

output "public_ip_address" {
  description = "The actual ip address allocated for the resource."
  value       = azurerm_public_ip.vm.*.ip_address
}

output "public_ip_dns_name" {
  description = "fqdn to connect to the first vm provisioned."
  value       = azurerm_public_ip.vm.*.fqdn
}

output "availability_set_id" {
  description = "id of the availability set where the vms are provisioned."
  value       = var.availability_set_id != "" ? var.availability_set_id : length(azurerm_availability_set.vm.*.id) > 0 ? azurerm_availability_set.vm[0].id : ""
}
