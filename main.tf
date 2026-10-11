data "okta_groups" "groups_lookup" {
  for_each = var.groups_lookup

  limit  = each.value.limit
  q      = each.value.q
  search = each.value.search
  type   = each.value.type
}

