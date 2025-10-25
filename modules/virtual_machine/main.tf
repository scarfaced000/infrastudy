resource "azurerm_public_ip" "vm_public_ip" {
  name                = "example-vm-pip"
  resource_group_name = var.resource_group_name
  location           = var.location
  allocation_method   = "Static"
  sku                = "Standard"
}

# Network Security Group 생성
resource "azurerm_network_security_group" "vm_nsg" {
  name                = "example-vm-nsg"
  location           = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

# Network Interface 생성
resource "azurerm_network_interface" "vm_nic" {
  name                = "example-vm-nic"
  location           = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id         = azurerm_public_ip.vm_public_ip.id
  }
}

# Network Interface와 NSG 연결
resource "azurerm_network_interface_security_group_association" "vm_nsg_association" {
  network_interface_id      = azurerm_network_interface.vm_nic.id
  network_security_group_id = azurerm_network_security_group.vm_nsg.id
}

# Virtual Machine 생성
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "example-vm"
  resource_group_name = var.resource_group_name
  location           = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"

  # SSH 키 기반 인증 설정
  disable_password_authentication = true

  network_interface_ids = [
    azurerm_network_interface.vm_nic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = var.ssh_public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
