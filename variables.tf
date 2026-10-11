variable "groups_lookup" {
  description = <<EOT
Map of groups_lookup, attributes below
Optional:
    - limit
    - q
    - search
    - type
EOT

  type = map(object({
    limit  = optional(number)
    q      = optional(string)
    search = optional(string)
    type   = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.groups_lookup : (
        v.limit == null || (v.limit >= 1 && v.limit <= 10000)
      )
    ])
    error_message = "must be between 1 and 10000"
  }
}

