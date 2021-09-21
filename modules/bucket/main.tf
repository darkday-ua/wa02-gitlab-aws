resource "aws_s3_bucket" "b" {
  bucket = var.bucket
  acl    = "private"
  versioning {
    enabled = true
  }

}