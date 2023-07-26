terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }

  backend "s3" {

    bucket = ""
    key    = ""
    region = ""
  }

  required_version = "1.5.3"
}
