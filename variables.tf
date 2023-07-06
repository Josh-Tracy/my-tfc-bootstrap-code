variable "ws" {
  type        = string
  description = "workspace name"
  default     = ""
}

variable "team" {
  type        = string
  description = "team name"
  default     = ""
}

variable "org" {
  type        = string
  description = "org name"
  default     = ""
}

variable "tags" {
  type        = list(any)
  description = "workspace tags"
  default     = []
}

variable "project_id" {
  type        = string
  description = "workspace project id"
  default     = ""
}


variable "access" {
  type        = string
  description = "permissions"
  default     = "read"
}

# Team access variable map
variable "team_access" {
  type        = map(string)
  description = "Map of existing Team(s) and built-in permissions to grant on Workspace."
  default     = {}
}

variable "organization_access" {
  type        = map(string)
  description = "Map of existing Team(s) and built-in org permissions to grant on Team."
  default     = {}
}

variable "varset" {
  type        = string
  description = "name of a varset to create"
  default     = ""
}

variable "tfvars" {
  type        = any
  description = "Map of Terraform variables to add to Workspace."
  default     = {}
}

variable "varset_vars" {
  type        = any
  description = "Map of Terraform variables to add to varset."
  default     = {}
}

variable "varset_sensitive" {
  type        = any
  description = "Map of sensitive Terraform variables to add to varset."
  default     = {}
}

variable "tfvars_sensitive" {
  type        = any
  description = "Map of sensitive Terraform variables to add to Workspace."
  default     = {}
}

variable "tfvars_ignore_changes" {
  type        = any
  description = "Map of Terraform variables to add to Workspace whereby changes made outside of Terraform will be ignored."
  default     = {}
}

variable "varset_envvars" {
  type        = map(string)
  description = "Map of Environment variables to add to varset."
  default     = {}
}

variable "envvars" {
  type        = map(string)
  description = "Map of Environment variables to add to Workspace."
  default     = {}
}

variable "envvars_sensitive" {
  type        = map(string)
  description = "Map of sensitive Environment variables to add to Workspace."
  default     = {}
}

variable "varset_envvars_sensitive" {
  type        = map(string)
  description = "Map of sensitive Environment variables to add to varset."
  default     = {}
}

variable "envvars_ignore_changes" {
  type        = map(string)
  description = "Map of sensitive Environment variables to add to Workspace whereby changes made outside of Terraform will be ignored."
  default     = {}
}
