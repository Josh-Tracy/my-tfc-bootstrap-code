provider "tfe" {
  token = var.tfc_token
  hostname = var.hostname
  # Configuration options
}

module "vending-varsets" {
  source = "../.."
  # for each workspace defined in var.workspaces
  for_each = var.varsets

  # Find each value for the defined keys.count
  varset = each.value.name
  org    = each.value.org

  varset_vars = {
    teststring = "iamstring"
    #testlist   = ["1", "2", "3"]
    testmap = { "a" = "1", "b" = "2", "c" = { "nest1key" = "nest1value" } }
  }

  varset_sensitive = {
    secret      = "secstring"
    secret_list = ["sec1", "sec2", "sec3"]
    secret_map  = { "x" = "sec4", "y" = "sec5", "z" = "sec6" }
  }

  varset_envvars = {
    AWS_ACCESS_KEY_ID = "TH1$ISNOTAREAL@CCESSKEY"
  }

  varset_envvars_sensitive = {
    AWS_SECRET_ACCESS_KEY = "THI$ISNOTAREALSECRETKEY123!@#"
    AWS_SESSION_TOKEN     = "THI$ISNOTAREALSESSIONTOKEN123456789$%^&*"
  }
}