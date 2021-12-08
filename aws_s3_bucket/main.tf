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

resource "aws_s3_bucket" "srecoursebuf_s3" {
  bucket = "srecoursebuf_s3_bucket"
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