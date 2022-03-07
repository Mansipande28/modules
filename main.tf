module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet1_cidr = var.subnet1_cidr
  subnet2_cidr = var.subnet2_cidr
  protocol = var.protocol
  all_cidr = var.all_cidr
  security_group_id = module.sg.security_group_id

}
module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  #subnet_id = var.subnet_id
  subnet1 = module.vpc.subnet1
  #subnet2 = module.vpc.subnet2
  security_group_id = module.sg.security_group_id
  
}
module "sg" {
   source = "./modules/sg"
  #vpc_id = aws_vpc.vpc.id 
  all_cidr = var.all_cidr
  protocol = var.protocol
}