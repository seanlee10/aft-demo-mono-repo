terraform {
  cloud {
    organization = "terraform-aft-demo"

    workspaces {
      name = "payer2"
    }
  }
}

provider "aws" {}


module "guardrails" {
  source = "../modules/guardrails"

}

module "permission_sets" {
  source = "../modules/permission_sets"

}

# module "okta" {
#   source = "../modules/okta"
# }