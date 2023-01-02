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

output "my_id" {
  value = data.aws_vpcs.selected.id
}

output "my_id2" {
  value = data.aws_subnets.selected.id
}

data "aws_subnets" "example" {
  filter {
    name = "tag:Environment"
    values = ["dev"]
  }
}

data "aws_subnet" "example" {
  for_each = toset(data.aws_subnets.example.ids)
  id       = each.value
}

output "my_id3" {
  value = data.aws_subnets.example.*
}