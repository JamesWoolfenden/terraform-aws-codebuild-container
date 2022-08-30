module "codecommit" {
  source            = "jameswoolfenden/codecommit/aws"
  version           = "v0.3.59"
  repository_name   = var.name
  approver_role     = var.approver_role
  kms_master_key_id = var.kms_key
}
