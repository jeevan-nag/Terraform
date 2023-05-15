output "ec2" {
  description = "AMI Address"
  value = aws_instance.webserver.ami
}

# output "sg_ec2" {
#   description = "SG id"
#   value = data.terraform_remote_state.security_group
# }