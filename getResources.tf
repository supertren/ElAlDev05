data "aws_vpcs" "foo" {
  tags = {
    service = "production"
  }
}

output "foo" {
  value = data.aws_vpcs.foo.ids
}

data "aws_subnet_ids" "AM-dev-agency-management-vpc" {
  vpc_id = value
}

data "aws_subnet" "AM-dev-agency-management-vpc" {
  for_each = data.aws_subnet_ids.AM-dev-agency-management-vpc.ids
  id       = each.value
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.AM-dev-agency-management-vpc : s.cidr_block]
}