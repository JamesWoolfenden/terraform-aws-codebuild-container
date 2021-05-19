module "container" {
  source                 = "../../"
  description            = var.description
  name                   = var.name
  otherawsaccount        = var.otherawsaccount
  common_tags            = var.common_tags
  sourcecode             = var.sourcecode
  force_artifact_destroy = "true"
  projectroot            = "example"
  kms_key                = aws_kms_key.codebuild.key_id
}
