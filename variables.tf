variable "project_approval_rules_lookup" {
  description = <<EOT
Map of project_approval_rules_lookup, attributes below
Required:
    - project
EOT

  type = map(object({
    project = string
  }))
}

