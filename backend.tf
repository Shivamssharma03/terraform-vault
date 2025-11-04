terraform {
  backend "s3" {
    bucket         = "shivam-terraform0489"
    key            = "shivam/terraform.tfstate" ## terraform statefilestoring
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}