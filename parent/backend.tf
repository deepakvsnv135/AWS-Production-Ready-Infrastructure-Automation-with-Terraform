terraform {
  backend "s3" {
    bucket         = "deepak-terraform-state-6198"
    key            = "infra-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}