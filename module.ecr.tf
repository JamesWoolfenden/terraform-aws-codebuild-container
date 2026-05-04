module "ecr" {
  source           = "git::https://github.com/jameswoolfenden/terraform-aws-ecr.git?ref=a128d9ef7c74f4c0f5c39d863985206b0e0b9c9a"
  name             = var.name
  repositorypolicy = data.aws_iam_policy_document.allowlocals.json
  kms_key          = var.kms_key
  common_tags      = var.common_tags
}
variable "kms_key" {
  type        = string
  description = "KMS key id"
}
