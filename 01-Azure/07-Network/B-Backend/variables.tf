variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The region where the resource will be deployed."
}

variable "ddosplanname" {
  type        = string
  description = "The name of DDoS Protection Plan."
}

variable "nsgname" {
  type        = string
  description = "The name of Basic Network Security Group Name."
}

variable "nsgrulename" {
  type        = string
  description = "The name of Basic Network Security Group Rule Name."
}

variable "nsgrulepriority" {
  type        = string
  description = "The Priority of Network Security Group Rule."
}

variable "nsgruledirection" {
  type        = string
  description = "The Direction of the Network Security Group Rule."
}

variable "nsgruleaccess" {
  type        = string
  description = "The Access of the Network Security Group Rule."
}

variable "nsgruledestinationport" {
  type        = string
  description = "The Destination Port of Network Security Group Rule."
}

variable "nsgruledestinationaddress" {
  type        = string
  description = "The Destination Port of Network Security Group Rule."
}

variable "delegatednsgname" {
  type        = string
  description = "The name of Basic Network Security Group Name."
}

variable "delegatednsgrulename" {
  type        = string
  description = "The name of Basic Network Security Group Rule Name."
}

variable "delegatednsgrulepriority" {
  type        = string
  description = "The Priority of Network Security Group Rule."
}

variable "delegatednsgruledirection" {
  type        = string
  description = "The Direction of the Network Security Group Rule."
}

variable "delegatednsgruleaccess" {
  type        = string
  description = "The Access of the Network Security Group Rule."
}

variable "delegatednsgruledestinationport" {
  type        = string
  description = "The Destination Port of Network Security Group Rule."
}

variable "delegatednsgruledestinationaddress" {
  type        = string
  description = "The Destination Port of Network Security Group Rule."
}

variable "virtualnetworkname" {
  type        = string
  description = "The Virtual Network Name."
}

variable "addressspace" {
  type        = string
  description = "The Address Space of the Virtual Network."
}

variable "subnetname" {
  type        = string
  description = "The Subnet Name in the Virtual Network."
}

variable "subnetaddressprefix" {
  type        = string
  description = "The Subnet Address Prefix Name in the Virtual Network."
}

variable "delegatedsubnetname" {
  type        = string
  description = "The Subnet Name in the Virtual Network."
}

variable "delegatedsubnetaddressprefix" {
  type        = string
  description = "The Subnet Address Prefix Name in the Virtual Network."
}

variable "delegationname" {
  type        = string
  description = "The Name of the Delegation."
}

variable "routetablename" {
  type        = string
  description = "The Name of the Route Table."
}

variable "routename" {
  type        = string
  description = "The Name of the Route."
}

variable "routename" {
  type        = string
  description = "The Name of the Route."
}

variable "routeaddressprefix" {
  type        = string
  description = "The Route Address Prefix."
}

variable "routenexthop" {
  type        = string
  description = "The Route Next Hop."
}






