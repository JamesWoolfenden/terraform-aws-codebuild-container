module "codebuild" {
  source                      = "jameswoolfenden/codebuild/aws"
  version                     = "0.2.61"
  common_tags                 = var.common_tags
  description                 = var.description
  environment_privileged_mode = true
  name                        = var.name
  source_type                 = "CODECOMMIT"
  source_location             = module.codecommit.clone_url_https
}
