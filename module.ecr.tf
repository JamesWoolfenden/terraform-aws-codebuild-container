module "ecr" {
  source           = "jameswoolfenden/ecr/aws"
  version          = "0.2.20"
  name             = var.name
  repositorypolicy = data.aws_iam_policy_document.allowlocals.json
  common_tags      = var.common_tags
}
