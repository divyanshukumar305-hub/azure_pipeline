rgs = {
  rg1 = {
    name     = "divyanshu"
    location = "Japan east"
  }
}
vnets = {
  vnet1 = {
    name                = "vnet"
    location            = "Japan east"
    resource_group_name = "divyanshu"
    address_space       = ["10.0.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    name                 = "subnet01"
    resource_group_name  = "divyanshu"
    virtual_network_name = "vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet02"
    resource_group_name  = "divyanshu"
    virtual_network_name = "vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
pips = {
  pip1 = {
    public_ip_name      = "pip_01"
    resource_group_name = "divyanshu"
    location            = "Japan east"
    allocation_method   = "Static"
  }
  pip2 = {
    public_ip_name      = "pip_02"
    resource_group_name = "divyanshu"
    location            = "Japan east"
    allocation_method   = "Static"
  }
}
vms = {

  vm1 = {
    nic_name                 = "nic_frount"
    location                 = "Japan east"
    resource_group_name      = "divyanshu"
    nic_subnet_name          = "subnet01"
    nic_virtual_network_name = "vnet"
    nic_public_ip_name       = "pip_01"
    vm_name                  = "frount-end-vm"
    vm_size                  = "Standard_B2as_v2"
    admin_username           = "divyanshu"
    admin_password           = "Divy@1245"

  }

  vm2 = {
    nic_name                 = "back_end_nic"
    location                 = "Japan east"
    resource_group_name      = "divyanshu"
    nic_subnet_name          = "subnet02"
    nic_virtual_network_name = "vnet"
    nic_public_ip_name       = "pip_02"
    vm_name                  = "backendvm"
    vm_size                  = "Standard_B2as_v2"
    admin_username           = "divyanshu2"
    admin_password           = "Divy@1245"
  }
}