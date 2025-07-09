terraform {
  backend "s3" {
    bucket         = "abykpaul-terraform-devops"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
  }
}
