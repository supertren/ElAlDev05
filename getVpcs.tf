locals {
	vpc_name = "public"
}

data "sbercloud_vpc" "vpc" {
  name = var.vpc_name
}