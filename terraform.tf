terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.9.0"
    }
  }

  backend "s3" {

    key    = "lamdba/dev/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = "~> 1.5.3"
}
