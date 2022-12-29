locals {
	vpc_name = "agency-management-vpc"
}

data "aws_subnets" "vpc_subnets" {
  filter {
    name   = "agency-management-vpc"
    values = [var.vpc_id]
  }
}