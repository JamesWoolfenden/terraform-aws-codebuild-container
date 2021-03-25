module "codecommit" {
  source          = "jameswoolfenden/codecommit/aws"
  version         = "0.3.10"
  repository_name = var.name
}
