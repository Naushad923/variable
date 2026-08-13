variable "xyz" {

}

resource "azurerm_resource_group" "rg" {
  name     = var.xyz
  location = "wesyus"
}


# write the code in terminal    terraform plan "-var-file=dev.tfvars"