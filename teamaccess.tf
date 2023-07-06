# For each team_access attribute in the workspace map, 
# get the data for each key (team) from the specified org.
data "tfe_team" "managed" {
  for_each = var.team_access

  name         = each.key
  organization = var.org
}

# For each team_access attribute in the workspace map,
# assign the team and access permissions to the workspace.
resource "tfe_team_access" "managed" {
  for_each = var.team_access != {} ? var.team_access : null

  workspace_id = tfe_workspace.test[0].id
  # for each team in data.tfe_team.test, get the data.tfe_team.test.id if the data.tfe_team.test.name == each.key
  team_id = [for t in [data.tfe_team.managed[each.key]] : t.id if t.name == each.key][0]
  access  = each.value
}