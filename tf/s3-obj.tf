terraform {
  required_providers {
    aws = {
      version = ">= 3.64.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

locals {
  file_path = "../app.py"
}

resource "aws_s3_object" "object" {
  bucket = "<change-me>"
  key = var.object_key
  source = local.file_path
}

output "object_s3_uri" {
  value = "s3://${aws_s3_object.object.bucket}/${aws_s3_object.object.key}"
}
