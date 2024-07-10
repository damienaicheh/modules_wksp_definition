resource "azapi_resource" "products" {
  for_each  = { for product in var.products : product.name => product }
  type      = "Microsoft.ApiManagement/service/workspaces/products@2023-05-01-preview"
  name      = each.value.name
  parent_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.apim.resource_group_name}/providers/Microsoft.ApiManagement/service/${var.apim.name}/workspaces/${var.workspace.name}"
  body = jsonencode({
    properties = {
      approvalRequired     = each.value.approval_required
      description          = each.value.description
      displayName          = each.value.display_name
      state                = "published"
      subscriptionRequired = each.value.subscription_required
      subscriptionsLimit   = each.value.subscriptions_limit
    }
  })
}
