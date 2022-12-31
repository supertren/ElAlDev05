data "aws_vpcs" "selected" {
  filter {
    name = "tag:vpc_name"
    values = ["agency-management-vpc"]
  }
}

data "aws_subnets" "selected" {
  filter {
    name = "tag:vpc_name"
    values = ["agency-management-vpc"]
  }
}