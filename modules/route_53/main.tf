resource "aws_route53_record" "record" {
  zone_id = var.hosted_zone_id
  name    = var.subdomain
  type    = var.record_type
  alias {
    name                   = var.alias_name
    zone_id                = var.lb_zone_id
    evaluate_target_health = false
  }
}