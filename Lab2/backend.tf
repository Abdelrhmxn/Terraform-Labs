terraform {
  backend "s3" {
    bucket         = "s3-bucket-terrafom"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "state-lock"
  }
}
