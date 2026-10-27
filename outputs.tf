output "workitemquery_permissions_id" {
  description = "Map of id values across all workitemquery_permissions, keyed the same as var.workitemquery_permissions"
  value       = { for k, v in azuredevops_workitemquery_permissions.workitemquery_permissions : k => v.id }
}
output "workitemquery_permissions_path" {
  description = "Map of path values across all workitemquery_permissions, keyed the same as var.workitemquery_permissions"
  value       = { for k, v in azuredevops_workitemquery_permissions.workitemquery_permissions : k => v.path }
}
output "workitemquery_permissions_permissions" {
  description = "Map of permissions values across all workitemquery_permissions, keyed the same as var.workitemquery_permissions"
  value       = { for k, v in azuredevops_workitemquery_permissions.workitemquery_permissions : k => v.permissions }
}
output "workitemquery_permissions_principal" {
  description = "Map of principal values across all workitemquery_permissions, keyed the same as var.workitemquery_permissions"
  value       = { for k, v in azuredevops_workitemquery_permissions.workitemquery_permissions : k => v.principal }
}
output "workitemquery_permissions_project_id" {
  description = "Map of project_id values across all workitemquery_permissions, keyed the same as var.workitemquery_permissions"
  value       = { for k, v in azuredevops_workitemquery_permissions.workitemquery_permissions : k => v.project_id }
}
output "workitemquery_permissions_replace" {
  description = "Map of replace values across all workitemquery_permissions, keyed the same as var.workitemquery_permissions"
  value       = { for k, v in azuredevops_workitemquery_permissions.workitemquery_permissions : k => v.replace }
}

