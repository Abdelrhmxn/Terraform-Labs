module "network" {
  source = "./network"
  cidr=var.cidr
  sub_priv_CIDR_list=var.sub_priv_CIDR_list
  sub_pub_CIDR_list=var.sub_pub_CIDR_list
  azs=var.azs  
}