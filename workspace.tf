resource "tfe_workspace" "test" {
  count = var.ws != "" ? 1 : 0

  name         = var.ws
  organization = var.org
  tag_names    = var.tags
  project_id   = var.project_id
}