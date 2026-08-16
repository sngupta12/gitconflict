variable "resource" {   
}

 

resource "azurerm_resource_group" "exp1"{

for_each=var.resource
    name=each.key
    location=each.value
}
