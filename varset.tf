resource "tfe_variable_set" "varset" {
  count = var.varset != "" ? 1 : 0

  name         = var.varset
  description  = "tfe provider generated"
  organization = var.org
}