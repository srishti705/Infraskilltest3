# -------------------------------------------------------
# backend.tf — Remote State backend
# S3 bucket + DynamoDB table created by bootstrap/
# -------------------------------------------------------

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "srishti-test-bucket-07" # must match bootstrap var.state_bucket_name
    key          = "nginxx/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true # replaces deprecated dynamodb_table param
    encrypt      = true
  }
}