variable "xyz" {

}

resource "azurerm_resource_group" "rg" {
  name     = var.xyz
  location = "westus"
}