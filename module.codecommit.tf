module "codecommit" {
  source          = "jameswoolfenden/codecommit/aws"
  version         = "0.3.4"
  repository_name = var.name
}
