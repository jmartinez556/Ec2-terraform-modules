resource "aws_lb_target_group" "target_group" {
  name     = var.target_group_name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id
  health_check {
    enabled           = true
    matcher           = "200-304"
    protocol          = var.protocol
    path              = "/"
    timeout           = 30
    interval          = 31
    healthy_threshold = 2
  }
}