terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

##########################################
# Data Block for DDoS Protection Plan:-
##########################################
data "azurerm_network_ddos_protection_plan" "axa_data_ddosprotectionplan" {
  name                = "axa-az-ddosprotectionplan"
  resource_group_name = "axa-az-rg"
}

##################################################################
# Resource Block for Network Security Group (BASIC) with Rules:-
##################################################################
resource "azurerm_network_security_group" "axa_networksecuritygroup_basic" {
  name                = "axa-az-networksecuritygroup-basic"
  location            = "West Europe"
  resource_group_name = "axa-az-rg"

   security_rule {
    name                       = "nsg-rule-basic-01"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "192.168.10.0/24"
  }
}

######################################################################
# Resource Block for Network Security Group (DELEGATED) with Rules:-
######################################################################
resource "azurerm_network_security_group" "axa_networksecuritygroup_delegated" {
  name                = "axa-az-networksecuritygroup-delegated"
  location            = "West Europe"
  resource_group_name = "axa-az-rg"

   security_rule {
    name                       = "nsg-rule-delegated-01"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "192.168.10.0/24"
  }
}


###########################################################################################################
# Resource Block for Virtual Network, Basic Subnet and Network Security Group Association to the Subnet:-
###########################################################################################################
resource "azurerm_virtual_network" "axa_virtualnetwork" {
  name                = "axa-az-virtualnetwork"
  location            = "West Europe"
  resource_group_name = "axa-az-rg"
  address_space       = ["192.168.10.0/24"]
}

####################################
# Resource Block for Basic Subnet:-
####################################
resource "azurerm_subnet" "axa_subnet_basic" {
  name           = "axa-az-subnet-01"
  resource_group_name  = "axa-az-rg"
  virtual_network_name = azurerm_virtual_network.axa_virtualnetwork.name
  address_prefix = "192.168.10.0/27"  
}

##########################################
# Resource Block for Delegated Subnet:-
##########################################
resource "azurerm_subnet" "axa_subnet_delegated" {
  name                 = "axa-az-subnet-02"
  resource_group_name  = "axa-az-rg"
  virtual_network_name = azurerm_virtual_network.axa_virtualnetwork.name
  address_prefixes     = ["192.168.10.32/27"]

  delegation {
    name = "axa-az-subnet-02-delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action", "Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}

##############################################################################
# Resource Block for Network Security Group Association to the Basic Subnet:-
##############################################################################
resource "azurerm_subnet_network_security_group_association" "axa_subnetnsgassociation_basic" {
  subnet_id                 = azurerm_subnet.axa_subnet_basic.id
  network_security_group_id = azurerm_network_security_group.axa_networksecuritygroup_basic.id
}

##################################################################################
# Resource Block for Network Security Group Association to the Delegated Subnet:-
##################################################################################
resource "azurerm_subnet_network_security_group_association" "axa_subnetnsgassociation_delegated" {
  subnet_id                 = azurerm_subnet.axa_subnet_delegated.id
  network_security_group_id = azurerm_network_security_group.axa_networksecuritygroup_delegated.id
}

#################################################
# Resource Block for Route Table with Routes:-
#################################################
resource "azurerm_route_table" "axa_routetable" {
  name                          = "axa-az-routetable"
  location                      = "West Europe"
  resource_group_name           = "axa-az-rg"
  disable_bgp_route_propagation = true

  route {
    name           = "Production"
    address_prefix = "10.100.0.0/16"
    next_hop_type  = "VirtualNetworkGateway"
  }

}

################################################################
# Resource Block for Route Table association to Subnet Basic:-
################################################################
resource "azurerm_subnet_route_table_association" "axa_subnetroutetableassociation_basic" {
  subnet_id      = azurerm_subnet.axa_subnet_basic.id
  route_table_id = azurerm_route_table.axa_routetable.id
}

###################################################################
# Resource Block for Route Table association to Subnet Delegated:-
###################################################################
resource "azurerm_subnet_route_table_association" "axa_subnetroutetableassociation_delegated" {
  subnet_id      = azurerm_subnet.axa_subnet_delegated.id 
  route_table_id = azurerm_route_table.axa_routetable.id
}
