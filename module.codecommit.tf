module "codecommit" {
  source          = "jameswoolfenden/codecommit/aws"
  version         = "v0.3.59"
  repository_name = var.name
}
