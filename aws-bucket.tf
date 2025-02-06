resource "aws_s3_bucket" "codepipeline_bucket" {
  bucket = var.codepipeline_bucket_name 
  force_destroy = true
  tags = {
    Name        = "codepipeline-artifacts"
    Environment = "dev" 
  }
}

resource "aws_s3_bucket_acl" "codepipeline_bucket_acl" {
  bucket = aws_s3_bucket.codepipeline_bucket.id
  acl    = "private" 
}

resource "aws_s3_bucket_versioning" "codepipeline_bucket_versioning" {
  bucket = aws_s3_bucket.codepipeline_bucket.id 
  versioning_configuration {
    status = "Enabled" 
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "codepipeline_bucket_sse" {
  bucket = aws_s3_bucket.codepipeline_bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256" 
    }
  }
}