resource "ovh_me_identity_group" "me_identity_groups" {
  for_each = var.me_identity_groups

  name        = each.value.name
  description = each.value.description
  role        = each.value.role
}

