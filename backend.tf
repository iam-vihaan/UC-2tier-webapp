terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "path/to/your/terraform.tfstate"
    region = "your-region"
  }
}
