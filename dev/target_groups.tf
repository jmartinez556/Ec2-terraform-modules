module "target_groups" {
  source            = "../modules/target_groups"
  port              = "80"
  protocol          = "HTTP"
  vpc_id            = module.vpc.vpc_id
  target_group_name = "justins-target-group2"
}