
  backend "s3" {
    bucket = "demo-usecases-bucket-new"
    key    = "usecase-02/terraform.tftstate"
    region = "us-east-1"
  }
