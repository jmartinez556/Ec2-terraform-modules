
resource "aws_autoscaling_group" "bar" {
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size
  vpc_zone_identifier = var.vpc_private_subnets
  target_group_arns   = [var.target_group_arns]

  launch_template {
    id      = var.launch_template_id
    version = "$Latest"
  }
}
