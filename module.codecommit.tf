module "codecommit" {
  source          = "jameswoolfenden/codecommit/aws"
  version         = "0.2.46"
  repository_name = var.name
}
