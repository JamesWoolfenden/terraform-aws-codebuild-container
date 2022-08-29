module "codecommit" {
  source          = "jameswoolfenden/codecommit/aws"
  version         = "0.3.58"
  repository_name = var.name
}
