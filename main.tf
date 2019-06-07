# Backend Initialization using command line

terraform {
 backend "s3" {
   key = "route53-dev.tfstate"
 }
}

locals {

}

# Initializing the provider

# Following properties need to be set for this to work
# export AWS_ACCESS_KEY_ID="anaccesskey"
# export AWS_SECRET_ACCESS_KEY="asecretkey"
# export AWS_DEFAULT_REGION="us-west-2"
# terraform plan
provider "aws" {}


resource "aws_route53_zone" "dev_domain" {
  name = "dev.amiinnovations.com"
}

