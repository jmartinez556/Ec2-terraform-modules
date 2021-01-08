variable "ami" {
  type    = string
  default = "ami-015839c0b166e9f34"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  type = string
}
variable "subnet_ids" {
  type = string
}
variable "key_name" {
  type    = string
  default = "Justin-us-east-1"
}
variable "associate_public_ip_address" {
  type    = string
  default = true
}
variable "subnet_name_version2" {
  type    = string
  default = true
}
variable "subnet_name_version3" {
  type    = string
  default = true
}
variable "subnet_name_version4" {
  type    = string
  default = true
}
variable "subnet_name_version5" {
  type    = string
  default = true
}
variable "subnet_name_version6" {
  type    = string
  default = true
}
variable "subnet_name_version7" {
  type    = string
  default = true
}
variable "subnet_name_version8" {
  type    = string
  default = true
}
variable "subnet_name_version9" {
  type    = string
  default = true
}
variable "subnet_name_version10" {
  type    = string
  default = true
}
variable "app_name" {
  type = string
}
variable "region" {
  type = string
}
variable "environment" {
  type = string
}



