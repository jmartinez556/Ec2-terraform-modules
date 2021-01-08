variable "desired_capacity" {
  type = string
}
variable "max_size" {
  type = number
}
variable "min_size" {
  type = number
}
variable "vpc_private_subnets" {
  type = list(string)
}
variable "target_group_arns" {
  type = string
}
variable "launch_template_id" {
  type = string
}
variable "launch_template_name" {
  type = string
}