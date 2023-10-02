variable "cidr" {
  type = string
}

variable "sub_priv_CIDR_list" {
  type = list(string)
}

variable "sub_pub_CIDR_list" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}
