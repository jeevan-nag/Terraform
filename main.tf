module "ec2" {
  source = "./modules/EC2"
  name = "Server"
}

module "rds" {
  source = "./modules/RDS" 
}


