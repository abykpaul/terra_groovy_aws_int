terraform {
  backend "s3" {
    bucket = "abykpaul-terraform-devops"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}