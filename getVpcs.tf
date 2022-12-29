locals {
	vpc_name = "public"
}

data "aws_vpc" "public" {
  filter {
    name   = "tag:Name"
    values = [local.vpc_name]
  }
}