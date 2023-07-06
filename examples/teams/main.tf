provider "tfe" {
  token = var.tfc_token
  hostname = var.hostname
  # Configuration options
}

module "vending-team" {
  source = "../.."
  # for each workspace defined in var.workspaces
  for_each = var.teams

  team                = each.value.name
  org                 = each.value.org
  organization_access = each.value.organization_access
}
