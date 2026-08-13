variable "xyz" {
  type    = string
  default = "naushad-rg"
}
resource "azurerm_resource_group" "rg" {
  name     = var.xyz
  location = "westus"
}