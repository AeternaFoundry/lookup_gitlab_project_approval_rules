output "project_approval_rules_lookup_id" {
  description = "Map of id values across all project_approval_rules_lookup, keyed the same as var.project_approval_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_approval_rules.project_approval_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_approval_rules_lookup_approval_rules" {
  description = "Map of approval_rules values across all project_approval_rules_lookup, keyed the same as var.project_approval_rules_lookup except keys with no approval_rules are omitted"
  value       = { for k, v in data.gitlab_project_approval_rules.project_approval_rules_lookup : k => v.approval_rules if v.approval_rules != null && length(v.approval_rules) > 0 }
}
output "project_approval_rules_lookup_project" {
  description = "Map of project values across all project_approval_rules_lookup, keyed the same as var.project_approval_rules_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_approval_rules.project_approval_rules_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

