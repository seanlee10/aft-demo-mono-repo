data "aws_ssoadmin_instances" "this" {}

resource "aws_ssoadmin_permission_set" "power_user" {
  name             = "UplusPowerUser"
  description      = "An example"
  instance_arn     = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  relay_state      = "https://s3.console.aws.amazon.com/s3/home?region=us-east-1#"
  session_duration = "PT2H"
}

resource "aws_ssoadmin_managed_policy_attachment" "power_user" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
  permission_set_arn = aws_ssoadmin_permission_set.power_user.arn
}