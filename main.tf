resource "azuredevops_workitemquery_permissions" "workitemquery_permissions" {
  for_each = var.workitemquery_permissions

  permissions = each.value.permissions
  principal   = each.value.principal
  project_id  = each.value.project_id
  path        = each.value.path
  replace     = each.value.replace

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

