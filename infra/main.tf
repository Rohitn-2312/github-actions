
resource "aws_s3_bucket" "homework_bucket" {
  bucket = "rohit-github-actions-homework"
}

# Block public access
resource "aws_s3_bucket_public_access_block" "homework_bucket" {
  bucket = aws_s3_bucket.homework_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
