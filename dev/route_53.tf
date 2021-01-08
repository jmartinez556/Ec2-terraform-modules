module "route_53" {
  source         = "../modules/route_53"
  alias_name     = module.load_balancer.lb_name
  hosted_zone_id = "Z00325031522O9P8IPI0"
  lb_zone_id     = module.load_balancer.zone_id
  subdomain      = "test3"
  record_type    = "A"
}