resource "aws_lb" "alb" {
  name               = "Justins-load-balancer"
  internal           = "false"
  load_balancer_type = "application"
  security_groups    = [var.security_groups_id]
  subnets            = [var.public_subnet1, var.public_subnet2, var.public_subnet3]


  tags = {
    Deployment_Method = "Terraform"
  }
}

resource "aws_lb_listener" "port-80-traffic" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = var.target_group
  }
}

resource "aws_lb_listener_rule" "port-80-rule" {
  listener_arn = aws_lb_listener.port-80-traffic.arn
  priority     = 99

  action {
    type             = "forward"
    target_group_arn = var.target_group
  }

  condition {
    host_header {
      values = [var.domain]
    }
  }
}
