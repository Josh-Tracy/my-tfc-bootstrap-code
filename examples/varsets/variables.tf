# A map that defines the structure for each worksapce variable.
variable "hostname" {
  type        = string
  description = "Hostname of TFC/TFE to use."
}

variable "tfc_token" {
  type        = string
  description = "Name of Organization to create Workspace in."
}

variable "varsets" {
  type = map(
    object(
      {
        name = string
        org  = string
      }
    )
  )

  description = "Map of objects for varsets to create."
  default = {
    varset1 = {
      name = "tfe-src-varset-1"
      org  = "Midgard"
    }
    varset2 = {
      name = "tfe-src-varset-2"
      org  = "Midgard"
    }
    varset3 = {
      name = "tfe-src-varset-3"
      org  = "Midgard"
    }
  }
}

