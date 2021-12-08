terraform {
  backend "s3" {
    bucket = "terraform-the-hard-way"
    key    = "srecourse.tfstate"
    region = "us-west-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_s3_bucket" "srecoursebuf-s3" {
  bucket = "srecoursebufs3bucket"
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}