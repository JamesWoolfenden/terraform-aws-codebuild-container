resource "aws_iam_policy" "additionalneeds" {
  name = "${var.name}-codebuild"

  policy = <<HERE
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "ecr:*",
            "Resource": "*"
        }
        ]
}
HERE
}

resource "aws_iam_role_policy_attachment" "lex" {
  role       = module.codebuild.codebuild_role_name
  policy_arn = aws_iam_policy.additionalneeds.arn
  depends_on = [aws_iam_policy.additionalneeds]
}
