resource "azapi_resource" "workspaces" {
  type = "Microsoft.ApiManagement/service/workspaces@2023-05-01-preview"
  name = var.workspace.name
  parent_id = data.azurerm_api_management.apim.id
  body = jsonencode({
    properties = {
      description = var.workspace.description
      displayName = var.workspace.display_name
    }
  })
}