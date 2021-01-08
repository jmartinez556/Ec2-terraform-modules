resource "aws_instance" "ec2-instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [var.vpc_security_group_ids]
  subnet_id                   = var.subnet_ids
  key_name                    = var.key_name
  associate_public_ip_address = true
  tags = {
    subnetthisec2livesin = var.subnet_name_version10
    Name                 = "${var.app_name}-${var.region}-${var.environment}-ec2_instance"
  }
}