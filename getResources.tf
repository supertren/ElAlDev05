data "aws_vpcs" "vpc-id" {
  tags = {
    Name	= "AM-dev-agency-management-vpc"
      }
}

output "vpc-id" {
  value = data.aws_vpcs.vpc-id.ids
}

variable "vpc" {}
variable "ami" {}

data "aws_vpc" "selected" {
  tags {
    Name = "${var.vpc}"
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = "${data.aws_vpc.selected.id}"
  tags {
      Name	= "AM-dev-agency-management-vpc"
      }
}
