
module "guardrails" {
  source = "./modules/guardrails"

}

module "guardrails" {
  source = "./modules/permission_sets"

}

module "okta" {
  source = "../modules/okta"
}