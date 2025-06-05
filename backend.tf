terraform {
  backend "s3" {
    bucket = "uc2-webbucket-new"
    key    = "bucket-uc2/terraform.tfstate"
    region = "us-east-1"
  }
}
