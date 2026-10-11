variable "file_storage_outbound_connectors_lookup" {
  description = <<EOT
Map of file_storage_outbound_connectors_lookup, attributes below
Required:
    - availability_domain
    - compartment_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    availability_domain = string
    compartment_id      = string
    display_name        = optional(string)
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

