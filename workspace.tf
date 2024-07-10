resource "azapi_resource" "workspaces" {
  type = "Microsoft.ApiManagement/service/workspaces@2023-05-01-preview"
  name = var.workspace.name
  parent_id = var.apim_id
  body = jsonencode({
    properties = {
      description = var.workspace.description
      displayName = var.workspace.display_name
    }
  })
}