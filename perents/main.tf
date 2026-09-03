module "resource_group" {
  source = "../child/resource_group"
  rgs    = var.rgs

}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../child/vnet"
  vnets      = var.vnets

}

module "subnet_network" {
  depends_on = [module.virtual_network,module.resource_group]
  source     = "../child/subnet"
  subnets    = var.subnets


}
module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../child/pip"
  pips       = var.pips
}

module "virtual_machine" {
  depends_on = [
    module.resource_group,
    module.virtual_network,
    module.subnet_network,
    module.public_ip
  ]

  source     = "../child/virtual_machine"
  vms        = var.vms

}