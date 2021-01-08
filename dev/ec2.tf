//module "first_ec2" {
//  source                 = "../modules/ec2"
//  instance_type          = "t3.micro"
//  subnet_ids             = module.vpc.private_subnet_id2
//  vpc_security_group_ids = module.security_group.security_group_id
//}
module "security_group" {
  source = "../modules/security_groups"
  vpc_id = module.vpc.vpc_id
}
