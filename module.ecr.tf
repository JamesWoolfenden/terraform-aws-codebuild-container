module "ecr" {
  source           = "jameswoolfenden/ecr/aws"
  version          = "0.2.60"
  name             = var.name
  repositorypolicy = data.aws_iam_policy_document.allowlocals.json
  kms_key          = var.kms_key
  common_tags      = var.common_tags
}


variable "kms_key" {
  type        = string
  description = "KMS key id"
}