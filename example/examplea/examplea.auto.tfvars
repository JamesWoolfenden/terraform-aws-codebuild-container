otherawsaccount = "983350543598"
description     = "The CodeBuild project for code in aws container"
name            = "aws-codebuild-container"
common_tags = {
  name = "aws-codebuild-container"
}

force_artifact_destroy = "true"

projectroot = "example"

sourcecode = {
  type      = "CODECOMMIT"
  location  = "https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/examplea"
  buildspec = ""
}
