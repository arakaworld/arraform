terraform {
    required_version = ">=0.13"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
  profile = "udemy-terraform-terraform"
  region = "ap-northeast-1"
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

