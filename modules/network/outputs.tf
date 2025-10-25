output "vnet_id" {
  description = "가상 네트워크 ID"
  value       = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  description = "서브넷 ID"
  value       = azurerm_subnet.subnets.id
}
