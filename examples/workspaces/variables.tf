# A map that defines the structure for each worksapce variable.
variable "hostname" {
  type        = string
  description = "Hostname of TFC/TFE to use."
}

variable "tfc_token" {
  type        = string
  description = "Name of Organization to create Workspace in."
}

variable "oauth_token_id" {
  type      = string
  sensitive = true
}

variable "workspaces" {
  type = map(
    object(
      {
        name              = string
        org               = string
        project_id        = string
        auto_apply        = bool
        queue_all_runs    = bool
        working_directory = string

        team_access = map(string)
      }
    )
  )

  description = "Map of objects for Workspaces to create."
  default = {
    ws_1 = {
      name              = "tfe-src-ws-1"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki"  = "read"
        "team freya" = "admin"
      }
    }
    ws_2 = {
      name              = "tfe-src-ws-2"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_4 = {
      name              = "tfe-src-ws-3"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_5 = {
      name              = "tfe-src-ws-4"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_6 = {
      name              = "tfe-src-ws-5"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_7 = {
      name              = "tfe-src-ws-6"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_8 = {
      name              = "tfe-src-ws-7"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_9 = {
      name              = "tfe-src-ws-8"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team loki" = "read"
      }
    }
    ws_10 = {
      name              = "tfe-src-ws-9"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team tyr" = "read"
      }
    }
    ws_11 = {
      name              = "tfe-src-ws-10"
      org               = "Midgard"
      project_id        = "prj-FGo1syAN2giiLWRW"
      auto_apply        = true
      queue_all_runs    = true
      working_directory = "/data/sample-state"
      team_access = {
        "team odin" = "write"
      }
    }
  }
}