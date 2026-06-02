resource "azurerm_resource_group""rg01"{
    for_each = var.rg-name
    name = each.key
    location = each.value.location
}