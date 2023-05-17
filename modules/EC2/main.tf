resource "aws_instance" "webserver" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = "t2.micro"
    tags =  {
        Name = var.name
    }
    key_name               = "TF_key"
    # monitoring             = true
    vpc_security_group_ids = [module.sg.SG_id]
    user_data = file("./modules/EC2/script.sh")

    # subnet_id              = 
    # subnet_ids = [] 
    # depends_on = [  ] // anything required to create before EC2 we can use it.
}

module "sg" {
  source = "../SG"
}

resource "aws_key_pair" "TF_key" {
  key_name   = "TF_key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "TF-key" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "tfkey"
}