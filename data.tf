data "azurerm_api_management" "apim" {
  name                = var.apim.name
  resource_group_name = var.apim.resource_group_name
}
