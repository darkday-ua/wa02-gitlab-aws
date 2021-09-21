resource "aws_iam_user" "user" {
  name                    = var.user.name
  path                    = "/system/"
}