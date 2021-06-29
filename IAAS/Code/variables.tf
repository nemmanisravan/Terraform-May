variable "rgname"{
  description="enter the name of resourcegroup in which VNET to be deployed"
}


variable "location" {
    type = string
    description = "Azure location of terraform server environment"
    #default = "westus2"

}
