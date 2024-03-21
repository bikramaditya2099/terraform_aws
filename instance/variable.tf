variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "user" {}
variable "key" {}
variable "sgid" {}
variable "inlineparams" {
  type = list(string)
}