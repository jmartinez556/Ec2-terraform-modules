variable "launch_template_name" {
  type = string
}
variable "ami" {
  type = string
}
variable "security_groups_id" {
  type = list(string)
}
variable "instance_type" {
  type = string
}
variable "key_name" {
  type = string
}
