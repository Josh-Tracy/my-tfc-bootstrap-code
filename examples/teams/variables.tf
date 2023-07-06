# A map that defines the structure for each team variable.

variable "hostname" {
  type        = string
  description = "Hostname of TFC/TFE to use."
}

variable "tfc_token" {
  type        = string
  description = "Name of Organization to create Workspace in."
}

variable "teams" {
  type = map(
    object(
      {
        name = string
        org  = string

        organization_access = map(string)
      }
    )
  )

  description = "Map of objects for Teams to create."
  default = {
    team1 = {
      name = "team loki"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = true
        read_projects           = true
        manage_policies         = false
        manage_policy_overrides = true
        manage_workspaces       = true
        manage_vcs_settings     = false
        manage_providers        = false
        manage_modules          = false
        manage_run_tasks        = false
        manage_projects         = true
        manage_membership       = true
      }
    }
    team2 = {
      name = "team freya"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = false
        read_projects           = false
        manage_policies         = false
        manage_policy_overrides = true
        manage_workspaces       = true
        manage_vcs_settings     = false
        manage_providers        = false
        manage_modules          = false
        manage_run_tasks        = false
        manage_projects         = false
        manage_membership       = false
      }
    }
    team3 = {
      name = "team odin"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = true
        read_projects           = true
        manage_policies         = true
        manage_policy_overrides = true
        manage_workspaces       = true
        manage_vcs_settings     = true
        manage_providers        = true
        manage_modules          = true
        manage_run_tasks        = true
        manage_projects         = true
        manage_membership       = true
      }
    }
    team4 = {
      name = "team thor"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = false
        read_projects           = false
        manage_policies         = false
        manage_policy_overrides = false
        manage_workspaces       = false
        manage_vcs_settings     = false
        manage_providers        = false
        manage_modules          = false
        manage_run_tasks        = false
        manage_projects         = false
        manage_membership       = false
      }
    }
    team5 = {
      name = "team tyr"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = true
        read_projects           = true
        manage_policies         = false
        manage_policy_overrides = true
        manage_workspaces       = true
        manage_vcs_settings     = false
        manage_providers        = false
        manage_modules          = false
        manage_run_tasks        = false
        manage_projects         = true
        manage_membership       = true
      }
    }
    team6 = {
      name = "team shiva"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = true
        read_projects           = true
        manage_policies         = false
        manage_policy_overrides = true
        manage_workspaces       = true
        manage_vcs_settings     = false
        manage_providers        = false
        manage_modules          = false
        manage_run_tasks        = false
        manage_projects         = true
        manage_membership       = true
      }
    }
    team7 = {
      name = "team ifrit"
      org  = "Midgard"

      organization_access = {
        read_workspaces         = true
        read_projects           = true
        manage_policies         = false
        manage_policy_overrides = true
        manage_workspaces       = true
        manage_vcs_settings     = false
        manage_providers        = false
        manage_modules          = false
        manage_run_tasks        = false
        manage_projects         = true
        manage_membership       = true
      }
    }
  }
}