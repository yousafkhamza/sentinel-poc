terraform {
  required_version = ">= 1.11.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "sentinel-split-architecture"
      Environment = "poc"
      ManagedBy   = "terraform"
    }
  }
}

provider "aws" {
  alias  = "untagged"
  region = var.aws_region
}
