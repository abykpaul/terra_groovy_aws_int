terraform {
  backend "s3" {
    bucket         = "jack-terraform-tfstate-bucket"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
  }
}
