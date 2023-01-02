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

data "aws_subnet" "example" {
    filter {
    name = "tag:vpc_name"
    values = ["agency-management-vpc"]
  }
  for_each = toset(data.aws_subnets.selected.ids)
  id       = each.value
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.example : s.cidr_block]
}