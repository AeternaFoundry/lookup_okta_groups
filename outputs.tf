output "groups_lookup_id" {
  description = "Map of id values across all groups_lookup, keyed the same as var.groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "groups_lookup_groups" {
  description = "Map of groups values across all groups_lookup, keyed the same as var.groups_lookup except keys with no groups are omitted"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "groups_lookup_limit" {
  description = "Map of limit values across all groups_lookup, keyed the same as var.groups_lookup except keys with no limit are omitted"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.limit if v.limit != null }
}
output "groups_lookup_q" {
  description = "Map of q values across all groups_lookup, keyed the same as var.groups_lookup except keys with no q are omitted"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.q if v.q != null && length(v.q) > 0 }
}
output "groups_lookup_search" {
  description = "Map of search values across all groups_lookup, keyed the same as var.groups_lookup except keys with no search are omitted"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}
output "groups_lookup_type" {
  description = "Map of type values across all groups_lookup, keyed the same as var.groups_lookup except keys with no type are omitted"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

