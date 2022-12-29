data "aws_vpcs" "foo" {
  tags = {
    Name	= "AM-dev-agency-management-vpc"
      }
}

output "foo" {
  value = data.aws_vpcs.foo.ids
}
