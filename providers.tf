terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 3.63"
    }
  }

  # Specify S3 bucket to store remote state, comment this section to store state locally
  backend "s3" {
    bucket  = ""
    key     = ""
    region  = "ap-southeast-1"
  }

}

provider "aws" {
  region  = "ap-southeast-1"
}