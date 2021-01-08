variable "vpc_cidr_block" {
  type    = string
  default = "10.200.0.0/16"
}
variable "region" {
  type    = string
  default = "us-east-1"
}
variable "public_subnet1_cidr_block" {
  type    = string
  default = "10.200.3.0/24"
}
variable "public_subnet2_cidr_block" {
  type    = string
  default = "10.200.1.0/24"
}
variable "public_subnet3_cidr_block" {
  type    = string
  default = "10.200.4.0/24"
}
variable "private_subnet1_cidr_block" {
  type    = string
  default = "10.200.2.0/24"
}
variable "private_subnet2_cidr_block" {
  type    = string
  default = "10.200.5.0/24"
}
variable "private_subnet3_cidr_block" {
  type    = string
  default = "10.200.6.0/24"
}




