terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
    backend "s3" {
    bucket = "daws78s-nnr6"
    key    = "expense-infra-db-rds_PR4545"
    region = "us-east-1"
    dynamodb_table = "daws78s-nnr6"
  }
  
}

provider "aws" {
  region="us-east-1"
}
