variable "me_identity_groups" {
  description = <<EOT
Map of me_identity_groups, attributes below
Required:
    - name
Optional:
    - description
    - role
EOT

  type = map(object({
    name        = string
    description = optional(string)
    role        = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

