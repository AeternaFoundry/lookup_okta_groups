output "groups_lookup_id" {
  description = "Map of id values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.id }
}
output "groups_lookup_groups" {
  description = "Map of groups values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.groups }
}
output "groups_lookup_limit" {
  description = "Map of limit values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.limit }
}
output "groups_lookup_q" {
  description = "Map of q values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.q }
}
output "groups_lookup_search" {
  description = "Map of search values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.search }
}
output "groups_lookup_type" {
  description = "Map of type values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.okta_groups.groups_lookup : k => v.type }
}

