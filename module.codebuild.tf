module "codebuild" {
  source                 = "git::https://github.com/jameswoolfenden/terraform-aws-codebuild.git?ref=249a7f19923cecde22d4130aff74c1630ad87b47" #v0.3.13
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
