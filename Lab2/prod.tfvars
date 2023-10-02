cidr               = "10.0.0.0/16"
ami_id             = "ami-01342111f883d5e4e"
instance_type      = "t2.micro"
sub_priv_CIDR_list = ["10.0.1.0/24", "10.0.3.0/24"]
sub_pub_CIDR_list  = ["10.0.2.0/24", "10.0.4.0/24"]
region             = "eu-central-1"
azs                = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
