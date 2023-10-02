variable "cidr" {
  type = string
  #   default = "10.0.0.0/16"
  #   description = "this CIDR Block for vpc"
}
variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "sub_priv_CIDR_list" {
  type = list(string)
}
variable "sub_pub_CIDR_list" {
  type = list(string)
}

variable "region" {
  type = string
}
variable "azs" {
  type = list(string)
}
