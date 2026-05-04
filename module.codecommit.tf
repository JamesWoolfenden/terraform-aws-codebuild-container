module "codecommit" {
  source            = "git::https://github.com/jameswoolfenden/terraform-aws-codecommit.git?ref=e4a7717c615eeb4f674d3919cc6a03317c2f5c3f" #v0.3.62
  repository_name   = var.name
  approver_role     = var.approver_role
  kms_master_key_id = var.kms_key
}
