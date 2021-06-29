#create resource group
resource "azurerm_resource_group" "rg" {
    name     = var.rgname
    location = var.location
   
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  resource_group_name = var.rgname
  location            = var.location
    address_space       = var.addressspace
}

#Create subnet
  resource "azurerm_subnet" "subnet1" {
    count=3  #  index:    0,1,2
     name                 = "AT&T_BCG_${count.index}"    # AT&T_BCG_0,  AT&T_BCG_1, 
     virtual_network_name = var.vnetname
     resource_group_name  = var.rgname
     address_prefix       = element( var.subnetsaddressspace,count.index)
 
 }

