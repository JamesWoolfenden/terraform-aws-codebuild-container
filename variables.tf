
variable "description" {
  description = "Description of build project"
  type        = string
}

variable "name" {
  type        = string
  description = "The name of the registry, repository and build"
}

variable "common_tags" {
  type = map(any)
}

variable "otherawsaccount" {
  type = string
}

variable "projectroot" {
  type        = string
  description = "The root project name"
}

variable "force_artifact_destroy" {
  type = string
}

variable "sourcecode" {
  type = map(any)
  default = {
    type      = "CODECOMMIT"
    location  = ""
    buildspec = ""
  }
}

variable "approver_role" {
  type        = string
  description = "Arn of approver role"
}
