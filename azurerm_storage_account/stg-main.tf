resource "azurerm_storage_account" "stgproj1"{
    for_each = var.stg-name
    name = each.key
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}