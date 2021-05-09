module "codebuild" {
  source                 = "jameswoolfenden/codebuild/aws"
  version                = "v0.2.123"
  common_tags            = var.common_tags
  description            = var.description
  name                   = var.name
  force_artifact_destroy = var.force_artifact_destroy
  projectroot            = var.projectroot
  sourcecode             = local.sourcecode
}


locals {
  sourcecode = {
    type      = "CODECOMMIT"
    location  = ""
    buildspec = ""
  }
}
