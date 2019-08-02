module "container" {
  source          = "../../"
  description     = var.description
  name            = var.name
  otherawsaccount = var.otherawsaccount
  common_tags     = var.common_tags
}
