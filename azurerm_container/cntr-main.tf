resource "azurerm_storage_container" "cntrproj1"{
    for_each = var.cntr-name
    name = each.key
    storage_account_name = each.value.storage_account_name
    container_access_type = each.value.container_access_type
}

terraform{
    backend "azurerm"{
        resource_group_name = "rg-terraform"
        storage_account_name = "stterraform"
        container_name = "tfstate"
        key = "terraform.tfstate"
    }
}