data "aws_vpc" "selected" {
  filter {
    name = "tag:vpc_name"
    values = ["vpc_name	agency-management-vpc"]
  }
}

data "aws_subnet" "selected" {
  filter {
    name = "tag:vpc_name"
    values = ["vpc_name	agency-management-vpc"]
  }
}