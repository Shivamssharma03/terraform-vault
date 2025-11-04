# backend-bootstrap/main.tf
provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "shivam-terraform0489"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
