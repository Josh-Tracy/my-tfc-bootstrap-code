provider "tfe" {
  token = var.tfc_token
  hostname = var.hostname
  # Configuration options
}

module "vending-ws" {
  source = "../.."
  # for each workspace defined in var.workspaces
  for_each = var.workspaces

  # Find each value for the defined keys.count
  ws          = each.value.name
  org         = each.value.org
  project_id  = each.value.project_id
  team_access = each.value.team_access

  tfvars = {
    teststring = "iamstring"
    #testlist   = ["1", "2", "3"]
    testmap    = { "a" = "1", "b" = "2", "c" = { "nest1key" = "nest1value" } }
  }

  tfvars_sensitive = {
    secret      = "secstring"
    secret_list = ["sec1", "sec2", "sec3"]
    secret_map  = { "x" = "sec4", "y" = "sec5", "z" = "sec6" }
  }

  envvars = {
    AWS_ACCESS_KEY_ID = "TH1$ISNOTAREAL@CCESSKEY"
  }

  envvars_sensitive = {
    AWS_SECRET_ACCESS_KEY = "THI$ISNOTAREALSECRETKEY123!@#"
    AWS_SESSION_TOKEN     = "THI$ISNOTAREALSESSIONTOKEN123456789$%^&*"
  }
}
