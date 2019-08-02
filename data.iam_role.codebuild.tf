data "aws_iam_role" "codebuild" {
  name = module.codebuild.codebuild_role_name
}