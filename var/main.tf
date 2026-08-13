variable "xyz" {

}

resource "azurerm_resource_group" "rg" {
  name     = var.xyz
  location = "westus"

}


# write the code in terminal    terraform plan -var "xyz=naushad-rg" 