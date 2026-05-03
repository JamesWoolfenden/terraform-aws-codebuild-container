module "codecommit" {
  source = "git::https://github.com/jameswoolfenden/terraform-aws-codecommit.git?ref=5c7a57264377a722ad87548c9199a15895dc834a" #v0.3.59
  repository_name   = var.name
  approver_role     = var.approver_role
  kms_master_key_id = var.kms_key
}
