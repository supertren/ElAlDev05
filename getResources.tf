data "aws_vpcs" "vpc-id" {
  tags = {
    Name	= "AM-dev-agency-management-vpc"
      }
}

output "vpc-id" {
  value = data.aws_vpcs.vpc-id.ids
}


data "aws_subnet" "selected" {
  id = ${data.aws_vpcs.vpc-id.ids}
}