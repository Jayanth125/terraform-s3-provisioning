terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket = "jayanth-terraform-state-2026-84729"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
