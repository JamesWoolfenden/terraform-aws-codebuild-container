module "ecr" {
  source = "git::https://github.com/jameswoolfenden/terraform-aws-ecr.git?ref=cd7159bbc155d6e8a475e1ccbd017b2987f3da35" #v0.2.60
  name             = var.name
  repositorypolicy = data.aws_iam_policy_document.allowlocals.json
  kms_key          = var.kms_key
  common_tags      = var.common_tags
}


variable "kms_key" {
  type        = string
  description = "KMS key id"
}
