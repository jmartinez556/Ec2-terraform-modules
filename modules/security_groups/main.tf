resource "aws_security_group" "load_balancer_security_group" {
  description = "Allow internet traffic"
  vpc_id      = var.vpc_id
  name        = "${var.app_name}-${var.region}-${var.environment}-lb_security_group"

  ingress {
    description = "allow traffic from public instances sg"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow traffic from public instances sg"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    description = "allow all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "instances_private_security_group" {
  description = "Allow internet traffic"
  vpc_id      = var.vpc_id
  name        = "${var.app_name}-${var.region}-${var.environment}-private_security_group"

  ingress {
    description     = "allow traffic from load balancer"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.load_balancer_security_group.id]
  }
  ingress {
    description     = "allow traffic from public instances sg"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [aws_security_group.load_balancer_security_group.id]
  }


  egress {
    description = "allow all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}