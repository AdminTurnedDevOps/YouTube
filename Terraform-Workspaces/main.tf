terraform {
  backend "s3" {
    bucket = "terraform-state-mjl92"
    key    = "ecr-terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "devopsthehardway-ecr-repo" {
  name                 = "${var.repo_name}-${var.environment}"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}