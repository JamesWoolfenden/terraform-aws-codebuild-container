resource "aws_iam_policy" "additionalneeds" {
  name = "${var.name}-codebuild"

  policy = <<HERE
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ecs:PutAttributes",
                "ecs:UpdateContainerInstancesState",
                "ecs:StartTask",
                "ecs:DescribeTaskSets",
                "ecs:DescribeTaskDefinition",
                "ecs:CreateCapacityProvider",
                "ecs:UpdateService",
                "ecs:DescribeCapacityProviders",
                "ecs:RegisterTaskDefinition",
                "ecs:StopTask",
                "ecs:DeregisterContainerInstance",
                "ecs:TagResource",
                "ecs:ListTaskDefinitions",
                "ecs:CreateTaskSet",
                "ecs:SubmitTaskStateChange",
                "ecs:UpdateClusterSettings",
                "ecs:CreateCluster",
                "ecs:DeleteService",
                "ecs:DeleteCluster",
                "ecs:DeleteTaskSet",
                "ecs:DescribeClusters",
                "ecs:PutAccountSetting",
                "ecs:StartTelemetrySession",
                "ecs:DeleteAccountSetting",
                "ecs:ListContainerInstances",
                "ecs:ListAttributes",
                "ecs:RegisterContainerInstance",
                "ecs:DeleteAttributes",
                "ecs:DeleteCapacityProvider",
                "ecs:ListServices",
                "ecs:SubmitAttachmentStateChanges",
                "ecs:DeregisterTaskDefinition",
                "ecs:Poll",
                "ecs:CreateService",
                "ecs:RunTask",
                "ecs:ListTasks",
                "ecs:SubmitContainerStateChange",
                "ecs:DescribeServices",
                "ecs:DescribeContainerInstances",
                "ecs:UntagResource",
                "ecs:DescribeTasks",
                "ecs:PutClusterCapacityProviders",
                "ecs:UpdateTaskSet",
                "ecs:ListClusters",
                "ecs:DiscoverPollEndpoint",
                "ecs:PutAccountSettingDefault",
                "ecs:ListAccountSettings",
                "ecs:ListTagsForResource",
                "ecs:ListTaskDefinitionFamilies",
                "ecs:UpdateContainerAgent",
                "ecs:UpdateServicePrimaryTaskSet"
            ],
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
