provider "aws" {
  region     = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "bucketfordemoterraform"
    key    = "bucketfordemoterraform/terraform_state"
    region = "us-east-1"
  }
}

module "RDS" {
  source = "modules/RDS"
}

