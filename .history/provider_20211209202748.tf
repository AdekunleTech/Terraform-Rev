terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.61.0"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "godenvirmannytwo"
    key            = "/group4/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}