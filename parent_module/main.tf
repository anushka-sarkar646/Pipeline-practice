module "rg" {
    source = "../child_module/azurerm_resource_group"
    rginfo = var.rgss
  }

  module "vnet" {
    depends_on = [ module.rg ]
    source = "../child_module/azurerm_vnet"
    vnet_info = var.vnetss
    
  }
  module "subnet" {
    depends_on = [ module.vnet ]
    source = "../child_module/azurerm_subnet"
    snet_info = var.snetss
    
  }