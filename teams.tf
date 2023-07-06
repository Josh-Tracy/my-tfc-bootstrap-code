resource "tfe_team" "teams" {
  count = var.team != "" ? 1 : 0

  name         = var.team
  organization = var.org

  organization_access {
    manage_vcs_settings     = lookup(var.organization_access, "manage_vcs_settings", false)
    read_workspaces         = lookup(var.organization_access, "read_workspaces", false)
    read_projects           = lookup(var.organization_access, "read_projects", false)
    manage_policies         = lookup(var.organization_access, "manage_policies", false)
    manage_policy_overrides = lookup(var.organization_access, "manage_policy_overrides", false)
    manage_workspaces       = lookup(var.organization_access, "manage_workspaces", false)
    manage_providers        = lookup(var.organization_access, "manage_providers", false)
    manage_modules          = lookup(var.organization_access, "manage_modules", false)
    manage_run_tasks        = lookup(var.organization_access, "manage_run_tasks", false)
    manage_projects         = lookup(var.organization_access, "manage_projects", false)
    manage_membership       = lookup(var.organization_access, "manage_membership", false)
  }
}