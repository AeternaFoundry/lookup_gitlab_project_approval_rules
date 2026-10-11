data "gitlab_project_approval_rules" "project_approval_rules_lookup" {
  for_each = var.project_approval_rules_lookup

  project = each.value.project
}

