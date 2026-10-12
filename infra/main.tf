
resource "aws_s3_bucket" "homework_bucket" {
  bucket = "github-actions-homework"
}

resource "aws_s3_bucket_versioning" "homework_bucket" {
  bucket = aws_s3_bucket.homework_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
