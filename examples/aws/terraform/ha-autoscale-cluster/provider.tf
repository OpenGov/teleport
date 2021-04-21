terraform {
  required_version = "~> 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0"
    }
    template = {
      source  = "hashicorp/template"
      version = ">= 2.2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.2.1"
    }
  }
}

provider "aws" {
  assume_role {
    role_arn     = var.aws_iam_role
    session_name = "tf-cloud-alias"
  }
  alias               = "us-west-2"
  region              = var.region
  allowed_account_ids = var.allowed_aws_account_ids
}

provider "aws" {
  assume_role {
    role_arn     = var.aws_iam_role
    session_name = "tf-cloud-workspace"
  }
  region              = var.region
  allowed_account_ids = var.allowed_aws_account_ids
}

variable "aws_max_retries" {
  default = 5
}
