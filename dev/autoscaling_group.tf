module "autoscaling_group" {
  source               = "../modules/autoscaling_group"
  desired_capacity     = 2
  launch_template_id   = module.launch_template1.launch_template_id
  launch_template_name = "launch_21"
  max_size             = 3
  min_size             = 1
  target_group_arns    = module.target_groups.target_group_arn
  vpc_private_subnets  = [module.vpc.private_subnet_id, module.vpc.private_subnet_id2, module.vpc.private_subnet_id3]

}