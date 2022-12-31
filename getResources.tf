data "aws_vpc" "selected" {
  filter {
    name = "tag:vpc_name"
    values = ["agency-management-vpc"]
  }
}

data "aws_subnet" "selected" {
  filter {
    name = "tag:vpc_name"
    values = ["agency-management-vpc"]
  }
}