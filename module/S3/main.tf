
# Creating and S3

resource "aws_s3_bucket" "bucket1" {
  bucket = var.bucket_name

  tags = {
    Team        = var.team
    Environment = terraform.workspace
  }
}

resource "aws_s3_bucket_versioning" "versioning_1" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.ownership1]

  bucket = aws_s3_bucket.bucket1.id
  acl    = "private"
}


resource "aws_s3_bucket_ownership_controls" "ownership1" {
  bucket = aws_s3_bucket.bucket1.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}