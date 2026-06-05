terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "my_vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  env      = "cebu"
}
