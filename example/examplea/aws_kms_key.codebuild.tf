
resource "aws_kms_key" "codebuild" {
  enable_key_rotation = true
}
