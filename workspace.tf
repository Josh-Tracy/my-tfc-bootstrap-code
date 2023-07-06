resource "tfe_workspace" "test" {
  count = var.ws != "" ? 1 : 0

  name              = var.ws
  organization      = var.org
  tag_names         = var.tags
  project_id        = var.project_id
  working_directory = var.working_directory
  auto_apply        = var.auto_apply
  queue_all_runs    = var.queue_all_runs

  dynamic "vcs_repo" {
    for_each = lookup(var.vcs_repo, "identifier", null) == null ? [] : [var.vcs_repo]
    content {
      identifier         = lookup(var.vcs_repo, "identifier", null)
      branch             = lookup(var.vcs_repo, "branch", null)
      oauth_token_id     = lookup(var.vcs_repo, "oauth_token_id", null)
      ingress_submodules = lookup(var.vcs_repo, "ingress_submodules", null)
      tags_regex         = lookup(var.vcs_repo, "tags_regex", null)
    }
  }
}