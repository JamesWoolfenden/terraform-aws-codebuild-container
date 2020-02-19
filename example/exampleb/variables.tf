
variable "description" {
  description = "Description of build project"
  type        = string
}

variable "name" {
  type        = string
  description = "The name of the registry, repository and build"
}

variable "common_tags" {
  type = map
}

variable "otherawsaccount" {
  type = string
}
