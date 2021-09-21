#Policy.tf
resource "aws_iam_user_policy" "s3_access_policy" {
 
  name = "gitlab_access_policy"
  user = var.user.name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": "arn:aws:s3:::wa-gitlab-test"
    }
  ]
}
EOF
}