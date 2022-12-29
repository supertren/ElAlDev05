data "aws_vpcs" "vpc-id" {
  tags = {
    Name	= "AM-dev-agency-management-vpc"
      }
}

output "vpc-id" {
  value = data.aws_vpcs.vpc-id.ids
}


data "aws_subnet" "selected" {
  id = element(data.aws_vpcs.vpc-id.ids, 0)
}