module "codebuild" {
  source = "git::https://github.com/jameswoolfenden/terraform-aws-codebuild.git?ref=ca8c589dc7b1f2a1c3877c0cd86a54c161819b80" #v0.3.1
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
