terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }
  }
  backend "s3" {
    bucket         = "step-into-iot-workspace-cloud"
    key            = "step-into-iot-workspace-cloud-rds-001"
    region         = "us-east-1"
    dynamodb_table = "step-into-iot-workspace-cloud"
  }
}

provider "aws" {
  region = "us-east-1"
}