terraform {
  required_providers {
      aws = {
      source  = "hashicorp/aws"
    }
  }
}
provider "aws" {
  version = "4.66.1"
  region = "ap-south-1"
}
