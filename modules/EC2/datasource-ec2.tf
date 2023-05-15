# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "amzlinux2" {
  most_recent = true // latest version of the AMI should be used
#   owners = [ "175710706571" ] //A list of AWS account IDs that owns the AMI ex: ["amazon"].
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

# data "aws_security_group" "SG_id" {
#   name = "my-security-group"
# }

# data "terraform_remote_state" "security_group" {
#   backend = "local"
#   config = {
#     path = "../SG"
#   }
# }