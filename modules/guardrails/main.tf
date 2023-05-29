resource "aws_organizations_policy" "prevent_disabling_or_changing_aws_config" {
  name    = "prevent_disabling_or_changing_aws_config"
  content = file("policies/prevent_disabling_or_changing_aws_config.json")
}

resource "aws_organizations_policy" "prevent_deleting_vpc_flow_logs" {
  name    = "prevent_deleting_vpc_flow_logs"
  content = file("policies/prevent_deleting_vpc_flow_logs.json")
}
