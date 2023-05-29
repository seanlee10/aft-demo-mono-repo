terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 4.0"
    }
  }
}

# Configure the Okta Provider
provider "okta" {
  org_name  = "dev-123456"
  base_url  = "oktapreview.com"
  api_token = "xxxx"
}


resource "okta_group" "example" {
  name        = "Example"
  description = "My Example Group"
}