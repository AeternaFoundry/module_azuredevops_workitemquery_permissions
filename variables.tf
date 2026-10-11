variable "workitemquery_permissions" {
  description = <<EOT
Map of workitemquery_permissions, attributes below
Required:
    - permissions
    - principal
    - project_id
Optional:
    - path
    - replace
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    permissions = map(string)
    principal   = string
    project_id  = string
    path        = optional(string)
    replace     = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemquery_permissions : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemquery_permissions : (
        v.path == null || (length(trimspace(v.path)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

