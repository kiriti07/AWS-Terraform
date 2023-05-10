terraform {
  backend "s3" {
    bucket = "terraform-iaac-kiriti"
    key    = "terraform/s3/terraform.tfstate"
    region = "ap-south-1"
    //dynamodb_table = "terraform-state-lock"
    //encrypt = true
  }
}
