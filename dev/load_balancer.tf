module "load_balancer" {
  source             = "../modules/load_balancer"
  domain             = "justin.kiastests.com"
  security_groups_id = module.security_group.security_group_id
  target_group       = module.target_groups.target_group_arn
  public_subnet1     = module.vpc.public_subnet_id
  public_subnet2     = module.vpc.public_subnet_id2
  public_subnet3     = module.vpc.public_subnet_id3
}