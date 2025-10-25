output "vm_id" {
  description = "가상머신 ID"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "public_ip_address" {
  description = "가상머신 공인 IP 주소"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "private_ip_address" {
  description = "가상머신 사설 IP 주소"
  value       = azurerm_network_interface.vm_nic.private_ip_address
}
