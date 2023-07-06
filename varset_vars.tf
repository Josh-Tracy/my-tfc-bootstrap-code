resource "tfe_variable" "varset_vars" {
  for_each = var.varset_vars != null ? var.varset_vars : null

  variable_set_id = tfe_variable_set.varset[0].id
  key             = each.key
  value           = try(tostring(each.value), "nostring") == "nostring" ? replace(jsonencode(each.value), ":", "=") : tostring(each.value)
  description     = "Managed by TFE Terraform provider."
  hcl             = try(tostring(each.value), "nostring") == "nostring" ? true : false
  sensitive       = false
  category        = "terraform"
  lifecycle {
    ignore_changes = [
      value,
      sensitive,
    ]
  }
}

resource "tfe_variable" "varset_sensitive" {
  for_each = var.varset_sensitive != null ? var.varset_sensitive : null

  variable_set_id = tfe_variable_set.varset[0].id
  key             = each.key
  value           = try(tostring(each.value), "nostring") == "nostring" ? replace(jsonencode(each.value), ":", "=") : tostring(each.value)
  description     = "Managed by TFE Terraform provider."
  hcl             = try(tostring(each.value), "nostring") == "nostring" ? true : false
  sensitive       = true
  category        = "terraform"
  lifecycle {
    ignore_changes = [
      value,
      sensitive,
    ]
  }
}

resource "tfe_variable" "varset_envvars" {
  for_each = var.varset_envvars != {} ? var.varset_envvars : {}

  variable_set_id = tfe_variable_set.varset[0].id
  key             = each.key
  value           = each.value
  description     = "Managed by TFE Terraform provider."
  hcl             = false
  sensitive       = false
  category        = "env"
}

resource "tfe_variable" "varset_envvars_sensitive" {
  for_each = var.varset_envvars_sensitive != {} ? var.varset_envvars_sensitive : {}

  variable_set_id = tfe_variable_set.varset[0].id
  key             = each.key
  value           = each.value
  description     = "Managed by TFE Terraform provider."
  hcl             = false
  sensitive       = true
  category        = "env"
}