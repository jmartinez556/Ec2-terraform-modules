module "launch_template1" {
  source               = "../modules/launch_template"
  launch_template_name = "justins_launch_template"
  security_groups_id   = [module.security_group.security_group_id]
  ami                  = "ami-0c00935023a833df1"
  key_name             = "Justin-us-east-1"
  instance_type        = "t2.micro"
}