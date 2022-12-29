data "aws_vpcs" "public" {
  tags = {
    service = "production"
  }
}

output "foo" {
  value = data.aws_vpcs.foo.ids
}