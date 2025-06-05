terraform {
  backend "s3" {
    bucket = "uc2-webbucket-demo"
    key    = "bucket-uc2/terraform.tfstate"
    region = "us-east-1"
  }
}
