terraform {
  backend "s3" {
    bucket = "web-bucket-uc2"
    key    = "bucket-uc2/terraform.tfstate"
    region = "us-east-1"
  }
}
